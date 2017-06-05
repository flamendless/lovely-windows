WINDOW = require("lovely-windows")

local w = {
	f1 = 1024,
	f2 = 320
}

local h = {
	f1 = 720,
	f2 = 200
}

function love.load()
	WINDOW.initialize(320,200)
	WINDOW.addInputTable(w,h)
end

function love.update(dt)
	WINDOW.update(dt)
end

function love.keypressed(key)
	WINDOW.keypressed(key)
end
