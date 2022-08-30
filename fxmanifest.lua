fx_version "cerulean"

game "gta5"

lua54 'yes'

files {
    'html/index.html',
    'html/style.css',
}

ui_page 'html/index.html',

client_scripts {
    'skin.lua',
    'exemple.lua',
}

escrow_ignore {
    'exemple.lua',
}