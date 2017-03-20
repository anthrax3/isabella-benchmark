local numSprites = 30000

-- Load some default values for our rectangle.
function love.load()
  img = love.graphics.newImage("isabella.png")
  actors ={}  
  for i=1,numSprites do 
    actors[i]={}
    actors[i].sprite = img
    actors[i].x = math.random()* love.graphics.getWidth()-50
    actors[i].y = math.random()* love.graphics.getHeight() -50
  end
end
 
-- Increase the size of the rectangle every frame.
function love.update(dt)
  for i=1,numSprites do    
    actors[i].x = actors[i].x + (0.5-math.random())
    actors[i].y = actors[i].y + (0.5-math.random())
  end
end
 
-- Draw a coloured rectangle.
function love.draw()
  for i=1,numSprites do    
    love.graphics.draw(actors[i].sprite, actors[i].x, actors[i].y)  
  end
  -- FPS CALC  
  love.graphics.print("FPS:"..love.timer.getFPS(), 0,0)
end