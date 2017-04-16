

local physics = require( "physics" )
physics.start()
local w, h = display.contentWidth, display.contentHeight

local joint

local water = display.newImage( "water.png", 160, 160 )

physics.addBody( water, "static", { friction=0.1, bounce=0.1 } )

local fish = display.newImage( "fish.png", 160, 240 )
physics.addBody( fish, { density=1.3, radius =10, friction=1} )


local fish2 = display.newImage( "fish.png", 150, 300 )

physics.addBody( fish2, { density=0 } )

joint = physics.newJoint("pivot", fish2, water, fish, w/3 + 5, h - 100)

	joint.isMotorEnabled = true
	joint.maxMotorTorque = 10000
	joint.motorSpeed = 80



