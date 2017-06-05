WINDOW = require("lovely-windows")

local table = {
	f1 = {1024,720},
	f2 = {720,600}
}


function love.load()
	WINDOW.initialize(320,200)
	WINDOW.addInputTable(table)
end

function love.update(dt)
	WINDOW.update(dt)
end

function love.keypressed(key)
	WINDOW.keypressed(key)
end
