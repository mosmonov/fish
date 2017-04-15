

local physics = require( "physics" )
physics.start()
physics.setGravity(0, 8)
physics.setDrawMode("hybrid")

local water = display.newImage( "water.png", 160, 160 )
water.x, water.y = display.contentCenterX+100, 550
water.rotation = 25

local fish = display.newImage( "fish.png", 160, 240 )
fish.x, fish.y = display.contentCenterX-70, 500

physics.addBody( water, "static", { friction=0.2, bounce=0.3 } )

local fish2 = display.newImage( "fish2.png", 150, 400 )
-- fish2.rotation = 1

physics.addBody( fish2, "static", { density=0, friction=0, bounce=0 } )

joint = physics.newJoint("piston", water, fish, water.x, water.y, 0, 1)

joint.isLimitEnabled = true
local p1, p2 = joint:getLimits()
print(p1, p2)
joint:setLimits(-240, 120)

joint.isMotorEnabled = true
joint.motorSpeed = -80
joint.maxMotorForce = 1000

-- joint.isCollideConnected = false



