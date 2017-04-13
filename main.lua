

local physics = require( "physics" )
physics.start()

local water = display.newImage( "water.png", 160, 160 )

local fish = display.newImage( "fish.png", 160, 240 )

physics.addBody( water, "static", { friction=0.2, bounce=0.3 } )

local fish2 = display.newImage( "fish2.png", 150, 400 )
-- fish2.rotation = 1

physics.addBody( fish2, "static", { density=0, friction=0, bounce=0 } )



