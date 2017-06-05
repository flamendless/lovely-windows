# LOVELY-WINDOWS is a window/screen manager for Love2D!

## FEATURES:
* Simple to use and implement
* Handles any keyboard input
* Timer to avoid repeating keypresses
* keypress/keyrelease - you choose what you want!
* Handles/calculates ratio of the game for scaling!

## You can also look at [sample](sample.lua)
## Love2d Forums [thread](https://love2d.org/forums/viewtopic.php?f=5&t=84009)

## BASIC USAGE:
1. Require the module,
```lua
WINDOWS = require("path-to-lovely-windows")

```
You can use any variable name if you don't like "WINDOWS"...Try using "MAC" *pun*

2. Make Tables! Key is the keyboard input, value is the width size
```lua
WINDOWS = require("path-to-lovely-windows")

local width = {
	f1 = 1024,
	f2 = 720,
}
--key inputs in height table should be the same as in the width table
local height = {
	f1 = 720,
	f2 = 640
}
--so if the user press f1, the new window size will be 1024x720
```

3. Initialize
```lua
function love.load()
	WINDOW.initialize(320,200) -- your custom game size (note: it is not the same as the window size)
	
	--then add the table to the module
	WINDOW.addInputTable(width,height) --parameters are the table we created earlier
end
```

4. ETC ETC ETC
```lua
function love.update(dt)
	WINDOW.update(dt)
end

function keypressed(key)
	WINDOW.keyInput(key)
end

--or if you want keyreleased, just put WINDOW.keyInput(key) in there.
```

# OTHER FUNCTIONS

## WINDOW.getRatio() - returns the calculated ratio, useful for using love.graphics.scale()

## WINDOW.setTimer(timer) - change the cooldown before changing the screen size, dont use 0, to avoid repeated changes in a single key stroke.

## WINDOW.listInput() - prints all the width and height sizes you've added. Useful with the LOVEDEBUG library

# TO-DO
* Add fullscreen switch
* Add joystick/gamepad input

## You can contribute, just make some pull request and commits. 
## Or you can issue if you have a problem

# LICENSE
This module/library is free. Do what you want.
