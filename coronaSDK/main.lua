local numSprites = 8000
local frameCount = 0


imgs={}
for i=1,numSprites do
  imgs[i] = display.newImage("isabella.png")
  imgs[i].x = math.random()* display.contentWidth
  imgs[i].y = math.random()* display.contentWidth
end

myfps = display.newText("FPS:",50,50, native.systemFont, 25)
myfps:setFillColor(1,1,1)

local function myUpdate(event)
  for i=1,numSprites do
     imgs[i].x = imgs[i].x + (0.5-math.random())
     imgs[i].y = imgs[i].y + (0.5-math.random())
  end
  frameCount = frameCount + 1  
end
Runtime:addEventListener("enterFrame", myUpdate )

local function everySecond( event )
    --I have to calc my own FPS because display.fps is not the real value
    myfps.text = "FPS:"..frameCount
    frameCount = 0
end

timer.performWithDelay(1000, everySecond, 0 )
