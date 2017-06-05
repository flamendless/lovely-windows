--LOVELY_WINDOWS, a window/screen manager module/library for Love2D
--FEATURES:
--easily switch window dimensions
--add key input
--handles ratio
--MIT LICENSE
--@flamendless

local WINDOW = {}

local _window = {}
local WIDTH = {}
local HEIGHT = {}

local currentMode = "f1"

function WINDOW.initialize(gameWidth,gameHeight)
	_window.windowWidth = love.graphics.getWidth()
	_window.windowHeight = love.graphics.getHeight()
	_window.gameWidth = gameWidth or love.graphics.getWidth()
	_window.gameHeight = gameHeight or love.graphics.getHeight()
	_window.ratio = math.min(_window.windowWidth/_window.gameWidth,
		_window.windowHeight/_window.gameHeight)
end

function WINDOW.getRatio()
	return _window.ratio
end

function WINDOW.keyInput(key)
	if WIDTH[key] ~= nil then
		WINDOW.switch(key)
	end
end

function WINDOW.switch(key)
	if key ~= currentMode then
		love.window.setMode(WIDTH[key], HEIGHT[key])
		WINDOW.initialize(_window.gameWidth,_window.gameHeight)
		currentMode = key
	end
end

function WINDOW.addInputTable(tab)
	if type(tab) == "table" then
		for k,v in pairs(tab) do
			WIDTH[k] = v[1]
			HEIGHT[k] = v[2]
		end
	end
end

function WINDOW.listInput()
	for k,v in pairs(WIDTH) do
		print("WIDTH:KEY " .. k .. "||   SIZE: " .. v )
	end
	for k,v in pairs(HEIGHT) do
		print("HEIGHT:KEY " .. k .. "||   SIZE: " .. v )
	end
end

return WINDOW
