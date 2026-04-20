-- this is where the main code will go.
--this main.lua file will act as the core of vomOS

local json = require("m_libraries/dkjson")

function love.load()
    -- read settings.json and decode it
    local data = love.filesystem.read("settings.json")
    local settings = json.decode(data)
   
    font = love.graphics.newFont("fonts/PetitePx.ttf", 20)
    love.graphics.setFont(font)
end

function love.update(dt)
    
end

function love.draw()
    love.graphics.print("FPS: " .. love.timer.getFPS(), 0, 0)
end