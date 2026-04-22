-- this is where the main code will go.
--this main.lua file will act as the core of vomOS

local json = require("m_libraries/dkjson")

function love.load()
    -- read settings.json and decode it
    local data = love.filesystem.read("settings.json")
    local settings = json.decode(data)

    canEsc = true
   
    font = love.graphics.newFont("fonts/PetitePx.ttf", 20)
    love.graphics.setFont(font)
    
    love.graphics.newImage("m_assets/vom_icon.png")
    love.graphics.newImage("m_assets/pointerW.png")
    love.graphics.newImage("m_assets/pointerB.png")

    local data = love.image.newImageData("m_assets/pointerW.png")
    cursor = love.mouse.newCursor(data, 0, 0)
    love.mouse.setCursor(cursor)

    love.window.setIcon(love.image.newImageData("m_assets/vom_icon.png"))
    love.window.setTitle("vomOS test build")
end

function love.update(dt)
    
end

function love.draw()
    love.graphics.print("vomOS test window", 0, 0)
    love.graphics.print("Press F11 to toggle fullscreen", 0, 10)
    love.graphics.print("Press ESC to quit", 0, 20)
end

function love.keypressed(key)
    if key == "f11" then
        if fscreen == false then
            love.window.setFullscreen(true)
            fscreen = true
        else
            love.window.setFullscreen(false)
            fscreen = false
        end
    end

    if key == "escape" then
        if canEsc == true then
            love.event.quit()
        end
    end
end