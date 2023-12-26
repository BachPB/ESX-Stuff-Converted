fx_version 'adamant'
game 'gta5'

author 'ESX-Framework'
version '1.10.2'
description 'ESX Progressbar (Converted To OX. By BachWorks)'
lua54 'yes'

client_scripts {
    'Progress.lua'
}

shared_scripts {
    '@es_extended/imports.lua',
    '@ox_lib/init.lua'
}

ui_page 'nui/index.html'

files {
    'nui/index.html',
    'nui/js/*.js',
    'nui/css/*.css',
}
