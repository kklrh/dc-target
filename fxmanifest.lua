fx_version 'cerulean'
game 'gta5'
lua54 'yes'
use_experimental_fxv2_oal 'yes'

version '1.1.0'
name "dc-target"
author 'Killerhunter. | klrh | deepcode'
description 'qb-target redesign'

ui_page 'web/index.html'
-- ui_page 'http://localhost:5173/'

client_scripts {
	'@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'@PolyZone/EntityZone.lua',
	'@PolyZone/CircleZone.lua',
	'@PolyZone/ComboZone.lua',
	'init.lua',
	'client.lua',
}

files {
	'data/*.lua',
	'web/*.html',
	'web/assets/*.css',
	'web/assets/*.js',
	'web/assets/*.mp3'
}

dependency 'PolyZone'
