local Tunnel = module('vrp','lib/Tunnel')
local Proxy = module('vrp','lib/Proxy')
local vRP = Proxy.getInterface('vRP')
local vRPC = Tunnel.getInterface('vRP')

ServerAPI = {}
Tunnel.bindInterface(GetCurrentResourceName(), ServerAPI)
ClientAPI = Tunnel.getInterface(GetCurrentResourceName())

local EMPTY_ARRAY = (json and json.decode('[]')) or {}

local function getUserId(source)
	return vRP.getUserId(source)
end

local function ensureNumber(value, default)
	if type(value) == 'number' then return value end
	return default or 0
end

local function getOrgByIndex(index)
	if type(index) ~= 'number' then return nil end
	return Config.Coords[index]
end

local function userHasAnyPermission(source, permissions)
	local userId = getUserId(source)
	if not userId then return false end
	for _,perm in ipairs(permissions) do
		if perm and vRP.hasPermission(userId, perm) then
			return true
		end
	end
	return false
end

local function getStorageKey(orgName)
	return ('comando_craft:storage:%s'):format(orgName)
end

local function readStorage(orgName)
	local key = getStorageKey(orgName)
	local raw = vRP.getSData(key)
	local ok, data = pcall(json.decode, raw or '[]')
	if not ok or type(data) ~= 'table' then data = {} end
	return data
end

local function writeStorage(orgName, items)
	local key = getStorageKey(orgName)
	vRP.setSData(key, json.encode(items or {}))
end

local function findStorageItem(items, name)
	for i=1,#items do
		local it = items[i]
		if it and (it.name == name or it.spawn == name) then
			return it, i
		end
	end
	return nil, nil
end

-- Ranking helpers
local function readUserRanking()
    local raw = vRP.getSData('comando_craft:ranking:users')
    local ok, data = pcall(json.decode, raw or '{}')
    if not ok or type(data) ~= 'table' then data = {} end
    return data
end

local function writeUserRanking(map)
    vRP.setSData('comando_craft:ranking:users', json.encode(map or {}))
end

local function getPlayerDisplayName(userId)
    local identity = (vRP.getUserIdentity and vRP.getUserIdentity(userId)) or nil
    if identity then
        if identity.name and identity.name2 then
            return (identity.name .. ' ' .. identity.name2)
        end
        if identity.firstname and identity.lastname then
            return (identity.firstname .. ' ' .. identity.lastname)
        end
        if identity.nome and identity.sobrenome then
            return (identity.nome .. ' ' .. identity.sobrenome)
        end
    end
    local src = vRP.getUserSource and vRP.getUserSource(userId)
    if src then
        local pname = GetPlayerName(src)
        if pname and pname ~= "" then
            return pname
        end
    end
    return 'ID '..tostring(userId)
end
local function findAllowedItem(allowedList, nameOrSpawn)
    if type(allowedList) ~= 'table' then return nil end
    for _,it in ipairs(allowedList) do
        if it and (it.spawn == nameOrSpawn or it.name == nameOrSpawn) then
            return it
        end
    end
    return nil
end

-- Permissions gate to open menu at a blip
function ServerAPI.hasMinPermission(blipIndex)
	local src = source
	local org = getOrgByIndex(blipIndex)
	if not org then return false end
	return userHasAnyPermission(src, {
		org.craftPermission,
		org.armazemPermission
	})
end

-- Returns craft list for the organization
function ServerAPI.getProductions(blipIndex)
    local org = getOrgByIndex(blipIndex)
    if not org then
        return {}  -- errado! precisa retornar estrutura completa
    end

    local items = org.craftItems or {}

    -- garantir que cada item tem os campos obrigatórios
    for _, item in ipairs(items) do
        if item.time == nil then item.time = 1 end
        if item.amount == nil then item.amount = 1 end
        if item.requires == nil then item.requires = {} end
    end

    return items
end



-- Returns armazem (storage) list with current amounts (persisted)
function ServerAPI.getStorage(blipIndex)
	local src = source
	local org = getOrgByIndex(blipIndex)
	if not org then return nil end
	if not userHasAnyPermission(src, { org.armazemPermission }) then return nil end
	local current = readStorage(org.name)
	-- Merge template items with persisted amounts
	local map = {}
	for _,it in ipairs(current) do
		map[it.spawn or it.name] = ensureNumber(it.amount, 0)
	end
	local result = {}
	for _,tmpl in ipairs(org.armazemItems or {}) do
		local spawn = tmpl.spawn or tmpl.name
		table.insert(result, {
			name = tmpl.name,
			image = tmpl.image,
			spawn = spawn,
			amount = ensureNumber(map[spawn], 0)
		})
	end
	return result
end

-- Produce an item immediately (validates requirements). Data may be { index, amount }
function ServerAPI.produceItem(blipIndex, data)
	local src = source
	local org = getOrgByIndex(blipIndex)
	if not org then return false end
	if not userHasAnyPermission(src, { org.craftPermission }) then return false end
    local recipes = org.craftItems or {}
    -- Accept both shapes: { index, amount, spawn/name } or { item = {...}, amount }
    local payloadItem = (data and data.item) or data
    local idx = ensureNumber(payloadItem and payloadItem.index or data and data.index, nil)
    local recipe = (idx and recipes[idx]) or nil
	if not recipe then
		-- try to find by spawn/name
        local wanted = payloadItem and (payloadItem.spawn or payloadItem.name) or (data and (data.spawn or data.name))
		if wanted then
			for i=1,#recipes do
				if recipes[i].spawn == wanted or recipes[i].name == wanted then
					recipe = recipes[i]
					break
				end
			end
		end
	end
	if not recipe then return false end
	local userId = getUserId(src)
	if not userId then return false end
    local produceAmount = ensureNumber(data and data.amount, 1)
	if produceAmount < 1 then produceAmount = 1 end

    -- Validate all requirements from organization storage (not player's inventory)
    local storageItems = readStorage(org.name)
    -- Check availability
    for _,req in ipairs(recipe.requires or {}) do
        local reqName = req.spawn or req.name
        local need = ensureNumber(req.amount, 0) * produceAmount
        if need > 0 then
            local it = select(1, findStorageItem(storageItems, reqName))
            if not it or ensureNumber(it.amount, 0) < need then
                return false
            end
        end
    end
    -- Deduct from storage
    for _,req in ipairs(recipe.requires or {}) do
        local reqName = req.spawn or req.name
        local need = ensureNumber(req.amount, 0) * produceAmount
        if need > 0 then
            local it, idx = findStorageItem(storageItems, reqName)
            if it then
                it.amount = ensureNumber(it.amount, 0) - need
                if it.amount <= 0 then table.remove(storageItems, idx) end
            end
        end
    end
    writeStorage(org.name, storageItems)

	-- Give result
	local giveName = recipe.spawn or recipe.name
	local giveQty = ensureNumber(recipe.amount, 1) * produceAmount
    if giveName == 'money' then
        vRP.giveMoney(userId, giveQty)
    else
        vRP.giveInventoryItem(userId, giveName, giveQty, true)
    end
    -- update ranking (count crafts per user)
    local rank = readUserRanking()
    rank[tostring(userId)] = ensureNumber(rank[tostring(userId)], 0) + 1
    writeUserRanking(rank)
	return true
end

-- Remove a queued item (no-op placeholder for compatibility)
function ServerAPI.removeItemFromQueue(blipIndex, data)
	return true
end

-- Save all queue (no-op placeholder for compatibility)
function ServerAPI.saveAll(blipIndex)
    local src = source
    local org = getOrgByIndex(blipIndex)
    if not org then return false end
    if not userHasAnyPermission(src, { org.armazemPermission }) then return false end

    local userId = getUserId(src)
    if not userId then return false end

    local items = readStorage(org.name)
    local totalDeposited = 0

    for _,allowed in ipairs(org.armazemItems or {}) do
        local spawn = allowed.spawn or allowed.name
        if spawn then
            local have = vRP.getInventoryItemAmount(userId, spawn)
            if have and have > 0 then
                vRP.tryGetInventoryItem(userId, spawn, have, true)
                local it = findStorageItem(items, spawn)
                if it then
                    it.amount = ensureNumber(it.amount, 0) + have
                else
                    table.insert(items, {
                        name = allowed.name or spawn,
                        spawn = spawn,
                        image = allowed.image,
                        amount = have
                    })
                end
                totalDeposited = totalDeposited + ensureNumber(have, 0)
                -- Registrar entrega no sistema de metas (lotus_orgs_v2)
                local orgName = vRP.getUserGroupOrg(userId)
                if orgName and spawn and have > 0 then
                    exports.oxmysql:execute('INSERT INTO mirtin_orgs_goals(organization, user_id, item, amount, `day`, `month`) VALUES(?,?,?,?,?,?) ON DUPLICATE KEY UPDATE amount = amount + VALUES(amount)', {
                        orgName, userId, spawn, have, os.date('%d'), os.date('%m')
                    })
                end
            end
        end
    end

    writeStorage(org.name, items)
    -- Atualiza ranking por depósito
    if totalDeposited > 0 then
        local rank = readUserRanking()
        rank[tostring(userId)] = ensureNumber(rank[tostring(userId)], 0) + totalDeposited
        writeUserRanking(rank)
    end
    return true
end

-- Save single item (no-op placeholder for compatibility)
function ServerAPI.saveItem(blipIndex, data)
    local src = source
    local org = getOrgByIndex(blipIndex)
    if not org then return false end
    if not userHasAnyPermission(src, { org.armazemPermission }) then return false end

    local userId = getUserId(src)
    if not userId then return false end

    local spawn = data and (data.spawn or (data.item and (data.item.spawn or data.item.name)) or data.name)
    local amount = ensureNumber(data and (data.amount or (data.item and data.item.amount)), 0)
    if not spawn then return false end

    -- Validate item is allowed in this org storage
    local allowed = findAllowedItem(org.armazemItems or {}, spawn)
    if not allowed then return false end

    -- Determine amount: if not provided or <=0, deposit all you have
    local have = vRP.getInventoryItemAmount(userId, spawn)
    if amount <= 0 then amount = have end
    if not have or have < amount or amount <= 0 then return false end

    -- Remove from player and add to storage
    vRP.tryGetInventoryItem(userId, spawn, amount, true)
    local items = readStorage(org.name)
    local it = findStorageItem(items, spawn)
    if it then
        it.amount = ensureNumber(it.amount, 0) + amount
    else
        table.insert(items, {
            name = allowed.name or spawn,
            spawn = allowed.spawn or spawn,
            image = allowed.image,
            amount = amount
        })
    end
    writeStorage(org.name, items)
    -- Atualiza ranking por depósito unitário
    local rank = readUserRanking()
    rank[tostring(userId)] = ensureNumber(rank[tostring(userId)], 0) + amount
    writeUserRanking(rank)
    -- Registrar entrega unitária no sistema de metas (lotus_orgs_v2)
    local orgName = vRP.getUserGroupOrg(userId)
    if orgName and spawn and amount > 0 then
        exports.oxmysql:execute('INSERT INTO mirtin_orgs_goals(organization, user_id, item, amount, `day`, `month`) VALUES(?,?,?,?,?,?) ON DUPLICATE KEY UPDATE amount = amount + VALUES(amount)', {
            orgName, userId, spawn, amount, os.date('%d'), os.date('%m')
        })
    end
    return true
end

-- Ranking placeholder (could be extended to track per-org crafts)
function ServerAPI.getRanking(blipIndex)
    -- Build top list by crafts
    local rank = readUserRanking()
    local arr = {}
    for k,v in pairs(rank) do
        local uid = tonumber(k)
        table.insert(arr, { id = uid, name = getPlayerDisplayName(uid), craft = ensureNumber(v,0) })
    end
    table.sort(arr, function(a,b)
        if a.craft == b.craft then return (a.id or 0) < (b.id or 0) end
        return a.craft > b.craft
    end)
    local top = {}
    for i=1, math.min(10, #arr) do
        table.insert(top, { position = i, id = arr[i].id, name = arr[i].name, craft = arr[i].craft })
    end
    return top
end

-- ORGANIZATION STORAGE MENU (command / events from client)
function ServerAPI.getOrgStorage(orgName)
	local src = source
	if type(orgName) ~= 'string' then return end
	local items = readStorage(orgName)
	TriggerClientEvent('comando_craft:showStorageMenu', src, orgName, items)
end

-- Removido: não permitir retirada via menu


