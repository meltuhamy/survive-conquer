#!bin/sh
~/node_modules/coffee-script/bin/coffee -b --join lib/game.js --compile src/Settings.coffee src/Actions.coffee src/Tile.coffee src/Map.coffee src/Player.coffee src/PlayerInput.coffee src/Game.coffee src/Camera.coffee src/NetworkClient.coffee src/UserInterface.coffee
