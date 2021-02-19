fx_version 'bodacious'

game 'gta5'

description 'J.O.K.E.R. Anticheat'

client_scripts {
    'configs/**/*.lua',
    'client/**/detections/*.lua',
    'client/**/*.lua',
}

server_scripts {
    'configs/**/*.lua',
    'server/**/authentications/*.lua',
    'server/**/bancheck/*.lua',
    'server/**/detections/*.lua',
    'server/**/*.lua',
}
