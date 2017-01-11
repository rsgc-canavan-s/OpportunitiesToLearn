//: # NyanCats Bounce when They are Happy
//: Let's take our code from the [previous page](@previous) as a starting point to build from
import SpriteKit
import PlaygroundSupport

let frame = CGRect(x: 0, y: 0, width: 320, height: 256)
let midPoint = CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0)

var scene = SKScene(size: frame.size)

let nyanCat = SKSpriteNode(imageNamed: "purple cobras")
nyanCat.position = midPoint
nyanCat.setScale(0.2)

//: ## Insert Happiness to Play Again
//: To show how happy Nyan Cat is, let's are run an action that repeats a sequence of Nyan Cat going up and down for ever
let actionMoveRight = SKAction.moveBy(x: 100, y: 0, duration: 0.5)
let actionMoveLeft = SKAction.moveBy(x: -100, y: 0, duration: 0.5)
let actionSequence = SKAction.sequence([actionMoveLeft, actionMoveRight, actionMoveRight, actionMoveLeft])
let actionRepeat = SKAction.repeatForever(actionSequence)
nyanCat.run(actionRepeat)
nyanCat.zPosition = 10  // Ensure sprite is above background
scene.addChild(nyanCat) // Add to the scene

//: And show the scene in the liveView

let view = SKView(frame: frame)
view.presentScene(scene)
PlaygroundPage.current.liveView = view

//: Well that's great... But I think Nyan Cat is a space cat so let's [add stars on the next page](@next)
