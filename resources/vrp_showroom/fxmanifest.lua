fx_version 'cerulean'
games { 'gta5' }

description "vRP showroom"
--ui_page "ui/index.html"

dependency "vrp"

client_scripts{ 
    "cfg/showroom.lua",
    "lib/Proxy.lua",
    "client.lua"
}

server_scripts{ 
    "@vrp/lib/utils.lua",
    "server.lua"
}
