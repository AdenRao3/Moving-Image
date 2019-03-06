-----------------------------------------------------------------------------------------
--
-- Created by: Aden Rao
-- Created on: Febuary 25th, 2019 
-- 
-- This file makes an object scroll across the screen
-----------------------------------------------------------------------------------------

local scrollSpeed = 4
local scrollSpeed2 = 3 
local scrollSpeed3 = 2

local backgroundImage = display.newImageRect("./assets/background.jpg", 600, 410)
backgroundImage.x = display.contentCenterX
backgroundImage.y = display.contentCenterY
backgroundImage.ID = "backgroundImage"

local zombie = display.newImageRect("./assets/zombie.png", 150, 150)
zombie.x = 10
zombie.y =  235 
zombie.ID = "zombie"

local knight = display.newImageRect("./assets/knight.png", 150, 150)
knight.x = -70
knight.y =  240 
knight.ID = "knight"

local meteor = display.newImageRect("./assets/meteor.png", 150, 150)
meteor.x = display.contentCenterX - 20
meteor.y =  0 
meteor.ID = "meteor"

local function MoveImage(event)

zombie.x = zombie.x + scrollSpeed 
knight.x = knight.x + scrollSpeed2
meteor.y = meteor.y + scrollSpeed3  

    print( display.fps )
end

Runtime:addEventListener("enterFrame", MoveImage )