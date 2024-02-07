fx_version "adamant"
game "rdr3"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

ui_page "nui/index.html"

client_scripts {
	"client/client.lua"
}

files {
	"nui/index.html",
	"nui/jquery.js",
	"nui/style.css",
	"nui/fonts/made_black.otf",
	"nui/fonts/made_regular.otf"
}

dependencies {
	'vorp_core',
	'vorp_inventory'
}

author '<4NDR4D3/>'
description 'Andrade-AntiDisconnect | Join https://discord.gg/fBAQTBRvat'
version '1.0.0'
