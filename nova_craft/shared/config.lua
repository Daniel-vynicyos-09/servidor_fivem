Config = {}

Config.CraftTemplate = {
    dominacaoLavagem = {
        {
            name = 'Dinheiro',
            image = 'money',
            spawn = 'money',
            amount = 190000,
            time = 4,
            requires = {
                { name = 'dirty_money', image = 'dirty_money', amount = 200000 },
                { name = 'l-alvejante', image = 'l-alvejante', amount = 20 },
            },
        },
        {
            name = 'Adrenalina',
            image = 'adrenalina',
            spawn = 'adrenalina',
            amount = 1,
            time = 4,
            requires = {
                { name = 'money', image = 'money', amount = 100000 },
            },
        },
    },

    dominacaoGeral = {
        
        {
            name = 'Pump Shotgun',
            image = 'weapon_pumpshotgun_mk2',
            spawn = 'weapon_pumpshotgun_mk2',
            amount = 1,
            time = 4,
            requires = {
                { name = 'dirty_money', image = 'dirty_money', amount = 3500000 },
            },
        },


        {
            name = 'Ammo Pump Shotgun',
            image = 'ammo_pumpshotgun_mk2',
            spawn = 'ammo_pumpshotgun_mk2',
            amount = 100,
            time = 4,
            requires = {
                { name = 'dirty_money', image = 'dirty_money', amount = 3500000 },
            },
        },

        {
            name = 'Munição Glock Barbie',
            image = 'ammo_glockrelikiashopfeminino',
            spawn = 'ammo_glockrelikiashopfeminino',
            amount = 100,
            time = 4,
            requires = {
                { name = 'dirty_money', image = 'dirty_money', amount = 100000 },
            },
        },
        {
            name = 'Glock Barbie',
            image = 'weapon_glockrelikiashopfeminino',
            spawn = 'weapon_glockrelikiashopfeminino',
            amount = 1,
            time = 4,
            requires = {
                { name = 'dirty_money', image = 'dirty_money', amount = 1000000 },
            },
        },        
        {
            name = 'AR Tambor',
            image = 'weapon_artambor',
            spawn = 'weapon_artambor',
            amount = 1,
            time = 4,
            requires = {
                { name = 'dirty_money', image = 'dirty_money', amount = 1000000 },
            },
        },

        {
            name = 'Munição Tambor',
            image = 'ammo_artambor',
            spawn = 'ammo_artambor',
            amount = 100,
            time = 4,
            requires = {
                { name = 'dirty_money', image = 'dirty_money', amount = 100000 },
            },
        },

        {
            name = 'Munição Fuzil do Makakero',
            image = 'ammo_mgouroo',
            spawn = 'ammo_mgouroo',
            amount = 100,
            time = 4,
            requires = {
                { name = 'dirty_money', image = 'dirty_money', amount = 100000 },
            },
        },
    },

    armas = {
        {
            name = 'SNS Pistol',
            image = 'weapon_snspistol_mk2',
            spawn = 'weapon_snspistol_mk2',
            amount = 1,
            time = 7,
            requires = {
                { name = 'pecadearma', image = 'pecadearma', amount = 70 },
            },
        },
        {
            name = 'Five Seven',
            image = 'weapon_pistol_mk2',
            spawn = 'weapon_pistol_mk2',
            amount = 1,
            time = 7,
            requires = {
                { name = 'pecadearma', image = 'pecadearma', amount = 135 },
            },
        },
        {
            name = 'Tec-9',
            image = 'weapon_machinepistol',
            spawn = 'weapon_machinepistol',
            amount = 1,
            time = 10,
            requires = {
                { name = 'pecadearma', image = 'pecadearma', amount = 200 },
            },
        },
        {
            name = 'SMG',
            image = 'weapon_assaultsmg',
            spawn = 'weapon_assaultsmg',
            amount = 1,
            time = 10,
            requires = {
                { name = 'pecadearma', image = 'pecadearma', amount = 270 },
            },
        },
        {
            name = 'AK MK2',
            image = 'weapon_assaultrifle_mk2',
            spawn = 'weapon_assaultrifle_mk2',
            amount = 1,
            time = 25,
            requires = {
                { name = 'pecadearma', image = 'pecadearma', amount = 330 },
            },
        },
        {
            name = 'G36',
            image = 'weapon_specialcarbine_mk2',
            spawn = 'weapon_specialcarbine_mk2',
            amount = 1,
            time = 25,
            requires = {
                { name = 'pecadearma', image = 'pecadearma', amount = 490 },
            },
        },
        {
            name = 'M16',
            image = 'weapon_tacticalrifle',
            spawn = 'weapon_tacticalrifle',
            amount = 1,
            time = 25,
            requires = {
                { name = 'pecadearma', image = 'pecadearma', amount = 540 },
            },
        },
        
        {
            name = 'Smg do Naue',
            image = 'weapon_glockderoupa_relikiashop',
            spawn = 'weapon_glockderoupa_relikiashop',
            amount = 1,
            time = 25,
            requires = {
                { name = 'pecadearma', image = 'pecadearma', amount = 500 },
            },
        },
    },
    armas2 = {
        {
            name = 'Glock Rajada',
            image = 'weapon_glockrajada',
            spawn = 'weapon_glockrajada',
            amount = 1,
            time = 7,
            requires = {
                { name = 'pecadearma', image = 'pecadearma', amount = 220 },
            },
        },
        {
            name = 'HK Relikia',
            image = 'weapon_hk_relikiashop',
            spawn = 'weapon_hk_relikiashop',
            amount = 1,
            time = 7,
            requires = {
                { name = 'pecadearma', image = 'pecadearma', amount = 330 },
            },
        },
        {
            name = 'AK CROMO',
            image = 'weapon_akcromo',
            spawn = 'weapon_akcromo',
            amount = 1,
            time = 10,
            requires = {
                { name = 'pecadearma', image = 'pecadearma', amount = 390 },
            },
        },
        {
            name = 'G3 LUNETA',
            image = 'weapon_g3luneta_relikiashop',
            spawn = 'weapon_g3luneta_relikiashop',
            amount = 1,
            time = 10,
            requires = {
                { name = 'pecadearma', image = 'pecadearma', amount = 440 },
            },
        },
    },
    municao = {
        {
            name = 'SNS Pistol',
            image = 'ammo_snspistol_mk2',
            spawn = 'ammo_snspistol_mk2',
            amount = 100,
            time = 7,
            requires = {
                { name = 'polvora',  image = 'polvora',  amount = 85 },
                { name = 'capsulas', image = 'capsulas', amount = 110 },
            },
        },
        
        {
            name = 'Five Seven',
            image = 'ammo_pistol_mk2',
            spawn = 'ammo_pistol_mk2',
            amount = 100,
            time = 7,
            requires = {
                { name = 'polvora',  image = 'polvora',  amount = 165 },
                { name = 'capsulas', image = 'capsulas', amount = 110 },
            },
        },
        {
            name = 'Tec-9',
            image = 'ammo_machinepistol',
            spawn = 'ammo_machinepistol',
            amount = 100,
            time = 10,
            requires = {
                { name = 'polvora',  image = 'polvora',  amount = 165 },
                { name = 'capsulas', image = 'capsulas', amount = 110 },
            },
        },
        {
            name = 'Glock Rajada',
            image = 'ammo_glockrajada',
            spawn = 'ammo_glockrajada',
            amount = 100,
            time = 10,
            requires = {
                { name = 'polvora',  image = 'polvora',  amount = 165 },
                { name = 'capsulas', image = 'capsulas', amount = 110 },
            },
        },
        {
            name = 'SMG',
            image = 'ammo_assaultsmg',
            spawn = 'ammo_assaultsmg',
            amount = 100,
            time = 10,
            requires = {
                { name = 'polvora',  image = 'polvora',  amount = 165 },
                { name = 'capsulas', image = 'capsulas', amount = 110 },
            },
        },
        {
            name = 'AK MK2',
            image = 'ammo_assaultrifle_mk2',
            spawn = 'ammo_assaultrifle_mk2',
            amount = 100,
            time = 25,
            requires = {
                { name = 'polvora',  image = 'polvora',  amount = 220 },
                { name = 'capsulas', image = 'capsulas', amount = 110 },
                { name = 'money',    image = 'money',    amount = 22000 },
            },
        },
        {
            name = 'G36',
            image = 'ammo_specialcarbine_mk2',
            spawn = 'ammo_specialcarbine_mk2',
            amount = 100,
            time = 25,
            requires = {
                { name = 'polvora',  image = 'polvora',  amount = 240 },
                { name = 'capsulas', image = 'capsulas', amount = 110 },
                { name = 'money',    image = 'money',    amount = 33000 },
            },
        },

        {
            name = 'G3 LUNETA',
            image = 'ammo_g3luneta_relikiashop',
            spawn = 'ammo_g3luneta_relikiashop',
            amount = 100,
            time = 25,
            requires = {
                { name = 'polvora',  image = 'polvora',  amount = 240 },
                { name = 'capsulas', image = 'capsulas', amount = 110 },
                { name = 'money',    image = 'money',    amount = 30000 },
            },
        },
        {
            name = 'HK Relikia',
            image = 'ammo_hk_relikiashop',
            spawn = 'ammo_hk_relikiashop',
            amount = 100,
            time = 25,
            requires = {
                { name = 'polvora',  image = 'polvora',  amount = 240 },
                { name = 'capsulas', image = 'capsulas', amount = 110 },
                { name = 'money',    image = 'money',    amount = 33000 },
            },
        },
        {
            name = 'AK CROMO',
            image = 'ammo_akcromo',
            spawn = 'ammo_akcromo',
            amount = 100,
            time = 25,
            requires = {
                { name = 'polvora',  image = 'polvora',  amount = 280 },
                { name = 'capsulas', image = 'capsulas', amount = 130 },
                { name = 'money',    image = 'money',    amount = 40000 },
            },
        },
        {
            name = 'M16',
            image = 'ammo_tacticalrifle',
            spawn = 'ammo_tacticalrifle',
            amount = 100,
            time = 25,
            requires = {
                { name = 'polvora',  image = 'polvora',  amount = 300 },
                { name = 'capsulas', image = 'capsulas', amount = 150 },
                { name = 'money',    image = 'money',    amount = 45000 },
            },
        },
        {
            name = 'Smg do Naue',
            image = 'ammo_glockderoupa_relikiashop',
            spawn = 'ammo_glockderoupa_relikiashop',
            amount = 100,
            time = 25,
            requires = {
                { name = 'polvora',  image = 'polvora',  amount = 280 },
                { name = 'capsulas', image = 'capsulas', amount = 110 },
                { name = 'money',    image = 'money',    amount = 44000 },
            },
        },
    },
    lavagem = {
        {
            name = 'Identidade Falsa',
            image = 'identidadefalsa',
            spawn = 'identidadefalsa',
            amount = 1,
            time = 4,
            requires = {
                { name = 'money', image = 'money', amount = 1000000 },
            },
        },
        {
            name = 'Ticket',
            image = 'ticket',
            spawn = 'ticket',
            amount = 1,
            time = 4,
            requires = {
                { name = 'poliester', image = 'poliester', amount = 40 },
            },
        },
        {
            name = 'Ticket Desafio',
            image = 'ticketdesafio',
            spawn = 'ticketdesafio',
            amount = 1,
            time = 4,
            requires = {
                { name = 'money', image = 'money', amount = 3000000 },
            },
        },
        {
            name = 'Dinheiro',
            image = 'money',
            spawn = 'money',
            amount = 180000,
            time = 4,
            requires = {
                { name = 'dirty_money', image = 'dirty_money', amount = 200000 },
                { name = 'l-alvejante', image = 'l-alvejante', amount = 22 },
            },
        },
        {
            name = 'Capuz',
            image = 'capuz',
            spawn = 'capuz',
            amount = 1,
            time = 10,
            requires = {
                { name = 'money', image = 'money', amount = 20000 },
            },
        },
        {
            name = 'Corda',
            image = 'corda',
            spawn = 'corda',
            amount = 1,
            time = 10,
            requires = {
                { name = 'money', image = 'money', amount = 20000 },
            },
        },
        {
            name = 'Algemas',
            image = 'algemas',
            spawn = 'algemas',
            amount = 1,
            time = 10,
            requires = {
                { name = 'money', image = 'money', amount = 20000 },
            },
        },
        {
            name = 'C4',
            image = 'c4',
            spawn = 'c4',
            amount = 1,
            time = 10,
            requires = {
                { name = 'money', image = 'money', amount = 5000 },
            },
        },
        {
            name = 'Colete',
            image = 'body_armor',
            spawn = 'body_armor',
            amount = 1,
            time = 10,
            requires = {
                { name = 'money', image = 'money', amount = 55000 },
            },
        },
    },
    drogasAzuis = {
        {
            name = 'Mochila X',
            image = 'mochilax',
            spawn = 'mochilax',
            amount = 1,
            time = 4,
            requires = {
                { name = 'tecido', image = 'tecido', amount = 50 },
            },
        },
        {
            name = "metanfetamina",
            image = "metanfetamina",
            spawn = "metanfetamina",
            amount = 1,
            time = 3,
            requires = {
                { name = "anfetamina", image = "anfetamina", amount = 2 },
            },
        },
        {
            name = "lockpick",
            image = "lockpick",
            spawn = "lockpick",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 50 },
                { name = "aluminio", image = "aluminio", amount = 50 },
            },
        },
        {
            name = "masterpick",
            image = "masterpick",
            spawn = "masterpick",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },
        {
            name = "alicate",
            image = "alicate",
            spawn = "alicate",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },
        {
            name = "Placa Clonada",
            image = "placa-clonada",
            spawn = "placa-clonada",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 100 },
                { name = "aluminio", image = "aluminio", amount = 100 },
            },
        },
    },
    drogasVermelhas = {
        {
            name = 'Mochila X',
            image = 'mochilax',
            spawn = 'mochilax',
            amount = 1,
            time = 4,
            requires = {
                { name = 'tecido', image = 'tecido', amount = 50 },
            },
        },

        {
            name = "heroina",
            image = "heroina",
            spawn = "heroina",
            amount = 1,
            time = 3,
            requires = {
                { name = "morfina", image = "morfina", amount = 2 },
            },
        },
        {
            name = "lockpick",
            image = "lockpick",
            spawn = "lockpick",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 50 },
                { name = "aluminio", image = "aluminio", amount = 50 },
            },
        },
        {
            name = "masterpick",
            image = "masterpick",
            spawn = "masterpick",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },
        {
            name = "alicate",
            image = "alicate",
            spawn = "alicate",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },
        {
            name = "Placa Clonada",
            image = "placa-clonada",
            spawn = "placa-clonada",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 100 },
                { name = "aluminio", image = "aluminio", amount = 100 },
            },
        },
    },
    motoclubSpecial = {
        {
            name = 'Mochila X',
            image = 'mochilax',
            spawn = 'mochilax',
            amount = 1,
            time = 4,
            requires = {
                { name = 'tecido', image = 'tecido', amount = 50 },
            },
        },

        {
            name = "heroina",
            image = "heroina",
            spawn = "heroina",
            amount = 1,
            time = 3,
            requires = {
                { name = "morfina", image = "morfina", amount = 2 },
            },
        },
        {
            name = "balinha",
            image = "balinha",
            spawn = "balinha",
            amount = 1,
            time = 3,
            requires = {
                { name = "podemd", image = "podemd", amount = 2 },
            },
        },
        {
            name = "lockpick",
            image = "lockpick",
            spawn = "lockpick",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 50 },
                { name = "aluminio", image = "aluminio", amount = 50 },
            },
        },
        {
            name = "masterpick",
            image = "masterpick",
            spawn = "masterpick",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },
        {
            name = "alicate",
            image = "alicate",
            spawn = "alicate",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },
        {
            name = "Placa Clonada",
            image = "placa-clonada",
            spawn = "placa-clonada",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 100 },
                { name = "aluminio", image = "aluminio", amount = 100 },
            },
        },
    },
    drogasPretas = {
        {
            name = 'Mochila X',
            image = 'mochilax',
            spawn = 'mochilax',
            amount = 1,
            time = 4,
            requires = {
                { name = 'tecido', image = 'tecido', amount = 50 },
            },
        },

        {
            name = "Cocaina",
            image = "cocaina",
            spawn = "cocaina",
            amount = 1,
            time = 3,
            requires = {
                { name = "pastabase", image = "pastabase", amount = 2 },
            },
        },
        {
            name = "lockpick",
            image = "lockpick",
            spawn = "lockpick",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 50 },
                { name = "aluminio", image = "aluminio", amount = 50 },
            },
        },
        {
            name = "masterpick",
            image = "masterpick",
            spawn = "masterpick",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },
        {
            name = "alicate",
            image = "alicate",
            spawn = "alicate",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },

        {
            name = "Placa Clonada",
            image = "placa-clonada",
            spawn = "placa-clonada",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 100 },
                { name = "aluminio", image = "aluminio", amount = 100 },
            },
        },
    },
    caliSpecial = {
        {
            name = 'Mochila X',
            image = 'mochilax',
            spawn = 'mochilax',
            amount = 1,
            time = 4,
            requires = {
                { name = 'tecido', image = 'tecido', amount = 50 },
            },
        },

        {
            name = "Cocaina",
            image = "cocaina",
            spawn = "cocaina",
            amount = 1,
            time = 3,
            requires = {
                { name = "pastabase", image = "pastabase", amount = 2 },
            },
        },
        {
            name = "metanfetamina",
            image = "metanfetamina",
            spawn = "metanfetamina",
            amount = 1,
            time = 3,
            requires = {
                { name = "anfetamina", image = "anfetamina", amount = 2 },
            },
        },
        {
            name = "lockpick",
            image = "lockpick",
            spawn = "lockpick",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 50 },
                { name = "aluminio", image = "aluminio", amount = 50 },
            },
        },
        {
            name = "masterpick",
            image = "masterpick",
            spawn = "masterpick",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },
        {
            name = "alicate",
            image = "alicate",
            spawn = "alicate",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },

        {
            name = "Placa Clonada",
            image = "placa-clonada",
            spawn = "placa-clonada",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 100 },
                { name = "aluminio", image = "aluminio", amount = 100 },
            },
        },
    },
    drogasAmarelas = {
        {
            name = 'Mochila X',
            image = 'mochilax',
            spawn = 'mochilax',
            amount = 1,
            time = 4,
            requires = {
                { name = 'tecido', image = 'tecido', amount = 50 },
            },
        },

        {
            name = "balinha",
            image = "balinha",
            spawn = "balinha",
            amount = 1,
            time = 3,
            requires = {
                { name = "podemd", image = "podemd", amount = 2 },
            },
        },
        {
            name = "lockpick",
            image = "lockpick",
            spawn = "lockpick",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 50 },
                { name = "aluminio", image = "aluminio", amount = 50 },
            },
        },
        {
            name = "masterpick",
            image = "masterpick",
            spawn = "masterpick",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },
        {
            name = "alicate",
            image = "alicate",
            spawn = "alicate",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },
        {
            name = "Placa Clonada",
            image = "placa-clonada",
            spawn = "placa-clonada",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 100 },
                { name = "aluminio", image = "aluminio", amount = 100 },
            },
        },
    },
    drogasVerdes = {
        {
            name = 'Mochila X',
            image = 'mochilax',
            spawn = 'mochilax',
            amount = 1,
            time = 4,
            requires = {
                { name = 'tecido', image = 'tecido', amount = 50 },
            },
        },     
                

        {
            name = "maconha",
            image = "maconha",
            spawn = "maconha",
            amount = 1,
            time = 3,
            requires = {
                { name = "folhamaconha", image = "folhamaconha", amount = 2 },
            },
        },
        {
            name = "lockpick",
            image = "lockpick",
            spawn = "lockpick",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 50 },
                { name = "aluminio", image = "aluminio", amount = 50 },
            },
        },
        {
            name = "masterpick",
            image = "masterpick",
            spawn = "masterpick",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },
        {
            name = "alicate",
            image = "alicate",
            spawn = "alicate",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },
        {
            name = "Placa Clonada",
            image = "placa-clonada",
            spawn = "placa-clonada",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 100 },
                { name = "aluminio", image = "aluminio", amount = 100 },
            },
        },
    },
    porte = {
        {
            name = "Pistola",
            image = "weapon_pistol",
            spawn = "weapon_pistol",
            amount = 1,
            time = 7,
            requires = {
                { name = "money", image = "money", amount = 100000 },
            },
        },
        {
            name = "Munição Pistola",
            image = "ammo_pistol",
            spawn = "ammo_pistol",
            amount = 50,
            time = 7,
            requires = {
                { name = "money", image = "money", amount = 50000 },
            },
        },
        {
            name = "alicate",
            image = "alicate",
            spawn = "alicate",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },
    },
    hospital = {
        {
            name = "Flor de Lotus",
            image = "flordelotus",
            spawn = "flordelotus",
            amount = 1,
            time = 7,
            limit = 20,
            requires = {
                { name = "riopan",   image = "riopan",   amount = 100 },
                { name = "coumadin", image = "coumadin", amount = 100 },
            },
        },
    },
}

Config.ArmazemTemplate = {
    armas = {
        { name = "Peça de Arma", spawn = "pecadearma", image = "pecadearma" },
    },
    geral = {
        { name = "Dinheiro Sujo", spawn = "dirty_money", image = "dirty_money" },
    },
    municao = {
        { name = "Capsulas", spawn = "capsulas", image = "capsulas" },
        { name = "Polvora",  spawn = "polvora",  image = "polvora" },
        { name = "Dinheiro", spawn = "money",    image = "money" },
    },
    lavagem = {
        { name = "Dinheiro Sujo", spawn = "dirty_money", image = "dirty_money" },
        { name = "Alvejante",     spawn = "l-alvejante", image = "l-alvejante" },
        { name = "Poliester",    spawn = "poliester",    image = "poliester" },
        { name = "Dinheiro",      spawn = "money",       image = "money" },
    },
    drogasAzuis = {
        { name = "Anfetamina", spawn = "anfetamina", image = "anfetamina" },
        { name = "Ferro",      spawn = "ferro",      image = "ferro" },
        { name = "Tecido",      spawn = "tecido",      image = "tecido" },
        { name = "Aluminio",   spawn = "aluminio",   image = "aluminio" },
        { name = "Dinheiro",   spawn = "money",      image = "money" },
    },
    drogasVermelhas = {
        { name = "Morfina",  spawn = "morfina",  image = "morfina" },
        { name = "Ferro",    spawn = "ferro",    image = "ferro" },
        { name = "Tecido",      spawn = "tecido",      image = "tecido" },
        { name = "Aluminio", spawn = "aluminio", image = "aluminio" },
        { name = "Dinheiro", spawn = "money",    image = "money" },
    },
    motoclubSpecial = {
        { name = "Balinha",  spawn = "balinha",  image = "balinha" },
        { name = "Morfina",  spawn = "morfina",  image = "morfina" },
        { name = "Ferro",    spawn = "ferro",    image = "ferro" },
        { name = "Tecido",      spawn = "tecido",      image = "tecido" },
        { name = "Aluminio", spawn = "aluminio", image = "aluminio" },
        { name = "Pó de MD", spawn = "podemd", image = "podemd" },
        { name = "Dinheiro", spawn = "money",    image = "money" },
    },
    
    drogasPretas = {
        { name = "Pasta Base", spawn = "pastabase", image = "pastabase" },
        { name = "Ferro",      spawn = "ferro",     image = "ferro" },
        { name = "Tecido",      spawn = "tecido",      image = "tecido" },
        { name = "Aluminio",   spawn = "aluminio",  image = "aluminio" },
        { name = "Dinheiro",   spawn = "money",     image = "money" },
    },
    caliSpecial = {
        { name = "Metanfetamina", spawn = "metanfetamina", image = "metanfetamina" },
        { name = "Anfetamina", spawn = "anfetamina", image = "anfetamina" },
        { name = "Pasta Base", spawn = "pastabase", image = "pastabase" },
        { name = "Ferro",      spawn = "ferro",     image = "ferro" },
        { name = "Tecido",      spawn = "tecido",      image = "tecido" },
        { name = "Aluminio",   spawn = "aluminio",  image = "aluminio" },
        { name = "Dinheiro",   spawn = "money",     image = "money" },
    },
    
    drogasAmarelas = {
        { name = "Pó de MD", spawn = "podemd",   image = "podemd" },
        { name = "Ferro",    spawn = "ferro",    image = "ferro" },
        { name = "Tecido",      spawn = "tecido",      image = "tecido" },
        { name = "Aluminio", spawn = "aluminio", image = "aluminio" },
        { name = "Dinheiro", spawn = "money",    image = "money" },
    },
    drogasVerdes = {
        { name = "Folha de Maconha", spawn = "folhamaconha", image = "folhamaconha" },
        { name = "Ferro",            spawn = "ferro",        image = "ferro" },
        { name = "Tecido",      spawn = "tecido",      image = "tecido" },
        { name = "Aluminio",         spawn = "aluminio",     image = "aluminio" },
        { name = "Dinheiro",         spawn = "money",        image = "money" },
    },
    hospital = {
        { name = "Riopan",   spawn = "riopan",   image = "riopan" },
        { name = "Cumadin",  spawn = "coumadin", image = "coumadin" },
        { name = "Dinheiro", spawn = "money",    image = "money" },
    },
}

Config.Coords = {
    -- -- DOMINACAO
    {
        name = 'Dominacao Lavagem',
        craftItems = Config.CraftTemplate.dominacaoLavagem,
        armazemItems = Config.ArmazemTemplate.lavagem,
        craftPermission = 'perm.liderlavagem',
        armazemPermission = 'perm.lavagem',
        hasDomination = 'Lavagem',
        coords = {
            vec3(-316.25,-2778.77,5.0),
        },
    },

    {
        name = 'Dominacao Geral',
        craftItems = Config.CraftTemplate.dominacaoGeral,
        armazemItems = Config.ArmazemTemplate.geral,
        craftPermission = 'perm.ilegal',
        armazemPermission = 'perm.ilegal',
        hasDomination = 'Geral',
        coords = {
            vec3(2760.77,1548.85,30.78),
        },
    },

    -- ARMAS
    {
        name = 'Serpentes',
        craftItems = Config.CraftTemplate.armas2,
        armazemItems = Config.ArmazemTemplate.armas,
        craftPermission = 'perm.gerenteserpentes',
        armazemPermission = 'perm.serpentes',
        coords = {
            vec3(2350.98,3130.92,48.21),
        },
    },
    {
        name = 'Franca',
        craftItems = Config.CraftTemplate.armas2,
        armazemItems = Config.ArmazemTemplate.armas,
        craftPermission = 'perm.liderfranca',
        armazemPermission = 'perm.franca',
        coords = {
            vec3(-2363.12,1706.97,234.09),
        },
    },
    {
        name = 'CORLEONE',
        craftItems = Config.CraftTemplate.armas,
        armazemItems = Config.ArmazemTemplate.armas,
        craftPermission = 'perm.lidercorleone',
        armazemPermission = 'perm.corleone',
        coords = {
            vec3(1246.96,1516.07,135.2),
        },
    },
    {
        name = 'Mercenarios',
        craftItems = Config.CraftTemplate.drogasAmarelas,
        armazemItems = Config.ArmazemTemplate.drogasAmarelas,
        craftPermission = 'perm.lidermercenarios',
        armazemPermission = 'perm.mercenarios',
        coords = {
            vec3(212.18,2760.68,43.49),
        },
    },
    {
        name = 'Mafia',
        craftItems = Config.CraftTemplate.armas,
        armazemItems = Config.ArmazemTemplate.armas,
        craftPermission = 'perm.gerentemafia',
        armazemPermission = 'perm.mafia',
        coords = {
            vec3(-1034.75,313.92,66.99),
        },
    },
    {
        name = 'Abutres',
        craftItems = Config.CraftTemplate.armas2,
        armazemItems = Config.ArmazemTemplate.armas,
        craftPermission = 'perm.liderabutres',
        armazemPermission = 'perm.abutres',
        coords = {
            vec3(2433.61, 4986.97, 41.05),
        },
    },
    {
        name = 'Corleone',
        craftItems = Config.CraftTemplate.armas2,
        armazemItems = Config.ArmazemTemplate.armas,
        craftPermission = 'perm.lidercorleone',
        armazemPermission = 'perm.corleone',
        coords = {
            vec3(-1866.58, 2063.36, 140.97),
        },
    },
    {
        name = 'Croacia',
        craftItems = Config.CraftTemplate.armas2,
        armazemItems = Config.ArmazemTemplate.armas,
        craftPermission = 'perm.lidercroacia',
        armazemPermission = 'perm.croacia',
        coords = {
            vec3(3038.73, 2967.22, 90.37),
        },
    },
    {
        name = 'NovaHolanda',
        craftItems = Config.CraftTemplate.armas,
        armazemItems = Config.ArmazemTemplate.armas,
        craftPermission = 'perm.lidernovaholanda',
        armazemPermission = 'perm.novaholanda',
        coords = {
            vec3(802.65,-293.26,67.13 ),
        },
    },
     
    {
        name = 'Turquia',
        craftItems = Config.CraftTemplate.armas,
        armazemItems = Config.ArmazemTemplate.armas,
        craftPermission = 'perm.liderturquia',
        armazemPermission = 'perm.turquia',
        coords = {
            vec3(1320.43, -781.18, 79.09),
        },
    },


    -- MUNICAO
    {
        name = 'Grota',
        craftItems = Config.CraftTemplate.municao,
        armazemItems = Config.ArmazemTemplate.municao,
        craftPermission = 'perm.lidergrota',
        armazemPermission = 'perm.grota',
        coords = {
            vec3(1250.88,-227.51,96.05),
        },
    },
    {
        name = 'Inglaterra',
        craftItems = Config.CraftTemplate.municao,
        armazemItems = Config.ArmazemTemplate.municao,
        craftPermission = 'perm.lideringlaterra',
        armazemPermission = 'perm.inglaterra',
        coords = {
            vec3(2179.82,4012.25,36.02),
        },
    },
    {
        name = 'Egito',
        craftItems = Config.CraftTemplate.municao,
        armazemItems = Config.ArmazemTemplate.municao,
        craftPermission = 'perm.lideregito',
        armazemPermission = 'perm.egito',
        coords = {
            vec3(-1969.1,4502.56,38.89),
        },
    },
    {
        name = 'Belgica',
        craftItems = Config.CraftTemplate.municao,
        armazemItems = Config.ArmazemTemplate.municao,
        craftPermission = 'perm.liderbelgica',
        armazemPermission = 'perm.belgica',
        coords = {
            vec3(-799.88,187.11,72.61),
        },
    },
    {
        name = 'Anonymous',
        craftItems = Config.CraftTemplate.municao,
        armazemItems = Config.ArmazemTemplate.municao,
        craftPermission = 'perm.lideranonymous',
        armazemPermission = 'perm.anonymous',
        coords = {
            vec3(-3154.98, 1555.97, 37.27),
        },
    },
    {
        name = 'Playboy',
        craftItems = Config.CraftTemplate.armas,
        armazemItems = Config.ArmazemTemplate.armas,
        craftPermission = 'perm.liderplayboy',
        armazemPermission = 'perm.playboy',
        coords = {
            vec3(-1543.01,79.43,56.75),
        },
    },

    {
        name = 'Colombia',
        craftItems = Config.CraftTemplate.municao,
        armazemItems = Config.ArmazemTemplate.municao,
        craftPermission = 'perm.gerentecolombia',
        armazemPermission = 'perm.colombia',
        coords = {
            vec3(-1515.07,847.5,176.99),
        },
    },
    {
        name = 'Tokyo',
        craftItems = Config.CraftTemplate.armas,
        armazemItems = Config.ArmazemTemplate.armas,
        craftPermission = 'perm.lidertokyo',
        armazemPermission = 'perm.tokyo',
        coords = {
            vec3(-3377.287, 1151.241, 5.256),
        },
    },
    {
        name = 'Magnatas',
        craftItems = Config.CraftTemplate.municao,
        armazemItems = Config.ArmazemTemplate.municao,
        craftPermission = 'perm.gerentemagnatas',
        armazemPermission = 'perm.magnatas',
        coords = {
            vec3(-2679.52,1327.22,144.25),
        },
    },
    {
        name = 'Cpx',
        craftItems = Config.CraftTemplate.municao,
        armazemItems = Config.ArmazemTemplate.municao,
        craftPermission = 'perm.lidercpx',
        armazemPermission = 'perm.cpx',
        coords = {
            vec3(267.31,-1749.77,44.28),
            vec3(1267.44,-1749.71,44.28)
        },
    },
    {
        name = 'Vagos',
        craftItems = Config.CraftTemplate.municao,
        armazemItems = Config.ArmazemTemplate.municao,
        craftPermission = 'perm.gerentevagos',
        armazemPermission = 'perm.vagos',
        coords = {
            vec3(284.67,-2026.37,2.86),
        },
    },
    {
        name = 'Inglaterra',
        craftItems = Config.CraftTemplate.municao,
        armazemItems = Config.ArmazemTemplate.municao,
        craftPermission = 'perm.lideringlaterra',
        armazemPermission = 'perm.inglaterra',
        coords = {
            vec3(-205.75,-1497.91,36.24),
        },
    },
    -- LAVAGEM
    {
        name = 'Bahamas',
        craftItems = Config.CraftTemplate.lavagem,
        armazemItems = Config.ArmazemTemplate.lavagem,
        craftPermission = 'perm.liderbahamas',
        armazemPermission = 'perm.bahamas',
        coords = {
            vec3(-1392.27,-608.86,30.31),
        },
    },
    {
        name = 'LifeInvader',
        craftItems = Config.CraftTemplate.lavagem,
        armazemItems = Config.ArmazemTemplate.lavagem,
        craftPermission = 'perm.liderlifeinvader',
        armazemPermission = 'perm.lifeinvader',
        coords = {
            vec3(-1082.16,-247.58,37.76),
        },
    },
    {
        name = 'Tequila',
        craftItems = Config.CraftTemplate.lavagem,
        armazemItems = Config.ArmazemTemplate.lavagem,
        craftPermission = 'perm.lidertequila',
        armazemPermission = 'perm.tequila',
        coords = {
            vec3(-560.72,281.5,85.68),
        },
    },
    {
        name = 'Cassino',
        craftItems = Config.CraftTemplate.lavagem,
        armazemItems = Config.ArmazemTemplate.lavagem,
        craftPermission = 'perm.lidercassino',
        armazemPermission = 'perm.cassino',
        coords = {
            vec3(961.02, 13.77, 75.74),
        },
    },
    {
        name = 'Medusa',
        craftItems = Config.CraftTemplate.lavagem,
        armazemItems = Config.ArmazemTemplate.lavagem,
        craftPermission = 'perm.lidermedusa',
        armazemPermission = 'perm.medusa',
        coords = {
            vec3(749.6, -550.66, 33.63),
        },
    },
    {
        name = 'Mexico',
        craftItems = Config.CraftTemplate.lavagem,
        armazemItems = Config.ArmazemTemplate.lavagem,
        craftPermission = 'perm.gerentemexico',
        armazemPermission = 'perm.mexico',
        coords = {
            vec3(-612.01, -1613.88, 27.01),
        },
    },
    {
        name = 'Vaticano',
        craftItems = Config.CraftTemplate.lavagem,
        armazemItems = Config.ArmazemTemplate.lavagem,
        craftPermission = 'perm.lidervaticano',
        armazemPermission = 'perm.vaticano',
        coords = {
            vec3(-2209.41,-252.21,43.17),
        },
    },
    {
        name = 'Lux',
        craftItems = Config.CraftTemplate.lavagem,
        armazemItems = Config.ArmazemTemplate.lavagem,
        craftPermission = 'perm.gerentelux',
        armazemPermission = 'perm.lux',
        coords = {
            vec3( -286.2,233.33,78.82),
        },
    },
    {
        name = 'Mainstreet',
        craftItems = Config.CraftTemplate.lavagem,
        armazemItems = Config.ArmazemTemplate.lavagem,
        craftPermission = 'perm.lidermainstreet',
        armazemPermission = 'perm.mainstreet',
        coords = {
            vec3(985.26,-1866.54,21.38),
        },
    },
    {
        name = 'China',
        craftItems = Config.CraftTemplate.lavagem,
        armazemItems = Config.ArmazemTemplate.lavagem,
        craftPermission = 'perm.liderchina',
        armazemPermission = 'perm.china',
        coords = {
            vec3(1982.37, 3053.27, 47.21),
        },
    },

    -- -- DROGAS
    {
        name = 'Motoclube',
        craftItems = Config.CraftTemplate.motoclubSpecial,
        armazemItems = Config.ArmazemTemplate.motoclubSpecial,
        craftPermission = 'perm.gerentemotoclube',
        armazemPermission = 'perm.motoclube',
        coords = {
            vec3(993.9,-119.44,73.99),
        },
    },
    {
        name = 'Crocodilos',
        craftItems = Config.CraftTemplate.drogasVermelhas,
        armazemItems = Config.ArmazemTemplate.drogasVermelhas,
        craftPermission = 'perm.lidercrocodilos',
        armazemPermission = 'perm.crocodilos',
        coords = {
            vec3(108.77, 6619.1, 31.73),
        },
    },
    {
        name = 'Bennys',
        craftItems = Config.CraftTemplate.drogasPretas,
        armazemItems = Config.ArmazemTemplate.drogasPretas,
        craftPermission = 'perm.liderbennys',
        armazemPermission = 'perm.bennys',
        coords = {
            vec3(-205.51,-1333.04,30.89),
        },
    },
    {
        name = 'Blackdragons',
        craftItems = Config.CraftTemplate.drogasAzuis,
        armazemItems = Config.ArmazemTemplate.drogasAzuis,
        craftPermission = 'perm.liderblackdragons',
        armazemPermission = 'perm.blackdragons',
        coords = {
            vec3(705.26,-1041.83,16.09),
        },
    },
    {
        name = 'Ballas',
        craftItems = Config.CraftTemplate.drogasPretas,
        armazemItems = Config.ArmazemTemplate.drogasPretas,
        craftPermission = 'perm.liderballas',
        armazemPermission = 'perm.ballas',
        coords = {
            vec3(472.9, -1312.19, 29.2),
        },
    },
    {
        name = 'Cali',
        craftItems = Config.CraftTemplate.caliSpecial,
        armazemItems = Config.ArmazemTemplate.caliSpecial,
        craftPermission = 'perm.lidercali',
        armazemPermission = 'perm.cali',
        coords = {
            vec3(683.2,1266.82,354.92),
        },
    },
    {
        name = 'Russia',
        craftItems = Config.CraftTemplate.drogasAmarelas,
        armazemItems = Config.ArmazemTemplate.drogasAmarelas,
        craftPermission = 'perm.liderrussia',
        armazemPermission = 'perm.russia',
        coords = {
            vec3(-2933.53, 37.11, 11.59),
        },
    },
    {
        name = 'Alemanha',
        craftItems = Config.CraftTemplate.armas,
        armazemItems = Config.ArmazemTemplate.armas,
        craftPermission = 'perm.lideralemanha',
        armazemPermission = 'perm.alemanha',
        coords = {
            vec3(821.74,225.67,87.72 ),
        },
    },
    {
        name = 'Jockey',
        craftItems = Config.CraftTemplate.drogasVerdes,
        armazemItems = Config.ArmazemTemplate.drogasVerdes,
        craftPermission = 'perm.liderjockey',
        armazemPermission = 'perm.jockey',
        coords = {
            vec3(71.03,-1948.9,15.97),
        },
    },
    {
        name = 'Bloods',
        craftItems = Config.CraftTemplate.drogasVerdes,
        armazemItems = Config.ArmazemTemplate.drogasVerdes,
        craftPermission = 'perm.gerentebloods',
        armazemPermission = 'perm.bloods',
        coords = {
            vec3(-1117.8,-1627.08,-0.34),
        },
    },

    {
        name = 'Israel',
        craftItems = Config.CraftTemplate.drogasAzuis,
        armazemItems = Config.ArmazemTemplate.drogasAzuis,
        craftPermission = 'perm.liderisrael',
        armazemPermission = 'perm.israel',
        coords = {
            vec3(1397.07,-2490.23,60.59),
        },
    },

    -- PORTES
    {
        name = 'Civil',
        craftItems = Config.CraftTemplate.porte,
        armazemItems = {},
        craftPermission = 'perm.lidercivil',
        armazemPermission = 'perm.lidercivil',
        craftHand = true,
        coords = {
            vec3(-1285.79,328.8,65.48),
        },
    },
    {
        name = 'Federal',
        craftItems = Config.CraftTemplate.porte,
        armazemItems = {},
        craftPermission = 'perm.liderfederal',
        armazemPermission = 'perm.liderfederal',
        craftHand = true,
        coords = {
            vec3(-785.65, -1220.17, 6.86),
        },
    },

    -- HOSPITAL
    {
        name = 'Hospital',
        craftItems = Config.CraftTemplate.hospital,
        armazemItems = Config.ArmazemTemplate.hospital,
        craftPermission = 'perm.liderhospital',
        armazemPermission = 'perm.hospital',
        -- craftHand = true,
        coords = {
            vec3(-2095.54,-462.75,12.44),
        },
    },
}
