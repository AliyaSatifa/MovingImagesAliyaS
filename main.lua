-- Title: MovingObjects
-- Name: Aliya Satifa
-- Course: ICS2O/3C
-- This program moves a beetleship moving
-- across the screen as weell as another object moving in a differant direction
print("testing")

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variables
scrollSpeed = 3

-- backgroud image with width and height
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- character image with width and height
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

-- set the image to be transperant 
beetleship.alpha = 0 

-- set the initial x and y position of beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

-- functions: MoveShip
-- Input: this function accepts an event listener
-- Output: none 
-- Description: This functions adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	-- add the scroll speed to the x-value of the ship
	beetleship.x = beetleship.alpha + 0.01

	-- change the transperency of the ship every time it moves so that it fades out
	beetleship.alpha = beetleship.alpha + 0.01
end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)

local turtle = display.newImageRect( "Images/Turtle.png", 200, 200 )

-- set the initial x and y position of Turtle
Turtle.x= 2


