//: # My God Its Full of Stars
//: There are lots of more accurate ways to build a star field, but let's do it with a single particle emitter. As usual we'll start with what we had on the [previous page](@previous)

import SpriteKit
import PlaygroundSupport
var xPos = 20
var xPos2 = 20
var xPos3 = 20
let upperVal = 9
let frame = CGRect(x: 0, y: 0, width: 320, height: 256)
var scene = SKScene(size: frame.size)

for i in 1...upperVal {
    var startingPoint = CGPoint(x: xPos, y: 236)
    let spaceInvader = SKSpriteNode(imageNamed: "imgres")
    
    spaceInvader.position = startingPoint
    spaceInvader.setScale(0.18)
    xPos += 30
    let actionMoveRight = SKAction.moveBy(x: 20, y: 0, duration: 1)
    let actionMoveLeft = SKAction.moveBy(x: -20, y: 0, duration: 1)
    let actionMoveDown = SKAction.moveBy(x: 0, y: -10, duration: 0.5)
    let actionSequence = SKAction.sequence([actionMoveRight, actionMoveRight, actionMoveDown, actionMoveLeft, actionMoveLeft, actionMoveDown])
    let actionRepeat = SKAction.repeatForever(actionSequence)
    spaceInvader.run(actionRepeat)
    spaceInvader.zPosition = 10  // Ensure sprite is above background
    scene.addChild(spaceInvader) // Add to the scene

}

for i in 1...upperVal {
    var startingPoint = CGPoint(x: xPos2, y: 206)
    let spaceInvader = SKSpriteNode(imageNamed: "spaceinvader2")
    
    spaceInvader.position = startingPoint
    spaceInvader.setScale(0.18)
    xPos2 += 30
    let actionMoveRight = SKAction.moveBy(x: 20, y: 0, duration: 1)
    let actionMoveLeft = SKAction.moveBy(x: -20, y: 0, duration: 1)
    let actionMoveDown = SKAction.moveBy(x: 0, y: -10, duration: 0.5)
    let actionSequence = SKAction.sequence([actionMoveRight, actionMoveRight, actionMoveDown, actionMoveLeft, actionMoveLeft, actionMoveDown])
    let actionRepeat = SKAction.repeatForever(actionSequence)
    spaceInvader.run(actionRepeat)
    spaceInvader.zPosition = 10  // Ensure sprite is above background
    scene.addChild(spaceInvader) // Add to the scene
    
}

for i in 1...upperVal {
    var startingPoint = CGPoint(x: xPos3, y: 180)
    let spaceInvader = SKSpriteNode(imageNamed: "spcaeinvader3")
    
    spaceInvader.position = startingPoint
    spaceInvader.setScale(0.18)
    xPos3 += 30
    let actionMoveRight = SKAction.moveBy(x: 20, y: 0, duration: 1)
    let actionMoveLeft = SKAction.moveBy(x: -20, y: 0, duration: 1)
    let actionMoveDown = SKAction.moveBy(x: 0, y: -10, duration: 0.5)
    let actionSequence = SKAction.sequence([actionMoveRight, actionMoveRight, actionMoveDown, actionMoveLeft, actionMoveLeft, actionMoveDown])
    let actionRepeat = SKAction.repeatForever(actionSequence)
    spaceInvader.run(actionRepeat)
    spaceInvader.zPosition = 10  // Ensure sprite is above background
    scene.addChild(spaceInvader) // Add to the scene
    
}

//: ## Adding the Star Emitter
//: Emitters are great for simple effects like this.. we will create one that occasionally spews out a star with a random speed, alpha, and y position
//let background =
/*
 let emitter = SKEmitterNode()
 emitter.particleLifetime = 40
 emitter.particleBlendMode = SKBlendMode.alpha
 emitter.particleBirthRate = 3
 emitter.particleSize = CGSize(width: 4,height: 4)
 emitter.particleColor = SKColor(red: 100, green: 100, blue: 255, alpha: 1)
 emitter.position = CGPoint(x:frame.size.width,y:startingPoint.y)
 emitter.particleSpeed = 16
 emitter.particleSpeedRange = 100
 emitter.particlePositionRange = CGVector(dx: 0, dy: frame.size.height)
 emitter.emissionAngle = 3.14
 emitter.advanceSimulationTime(40)
 emitter.particleAlpha = 0.5
 emitter.particleAlphaRange = 0.5
 scene.addChild(emitter)
 */
//: And show the scene in the liveView



let view = SKView(frame: frame)
view.presentScene(scene)
PlaygroundPage.current.liveView = view
//: All good, but it's just not there yet... [we should add a rainbow trail](@next)
