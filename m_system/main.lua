-- load in the dkjson library
local json = require("m_libraries/dkjson")

function love.load()
    -- read json and decode
    local jsondata = love.filesystem.read("userdata.json")
    local userdata = json.decode(jsondata)

    -- controls the state of vomOS. Ex: boot, app, etc.
    local vState = "boot"

    canEsc = true
   
    love.window.setFullscreen(false)

    font = love.graphics.newFont("fonts/Monocraft.ttf", 20)
    love.graphics.setFont(font)
    
    love.graphics.newImage("m_assets/vomlogo1.png")
    love.graphics.newImage("m_assets/crosscursor.png")
    love.graphics.newImage("m_assets/vomstartlogo.png")
    

    local cr_data = love.image.newImageData("m_assets/crosscursor.png")
    cursor = love.mouse.newCursor(cr_data, 6, 6)
    love.mouse.setCursor(cursor)

    love.window.setIcon(love.image.newImageData("m_assets/vomlogo1.png"))
    love.window.setTitle("ttt")
end

function love.update(dt)
    
end

function love.draw()
    love.graphics.setBackgroundColor(1, 1, 1)
    love.graphics.draw(love.graphics.newImage("m_assets/vomstartlogo.png"), 0, 0)
    love.graphics.print("press ESC to end the program", 0, 20)
end

function love.keypressed(key)
    if key == "escape" then
        if canEsc == true then
            love.event.quit()
        end
    end
end