//
//  GameScene.swift
//  SpireKit Tutorial
//
//  Created by Rebecca Peyser on 6/12/19.
//  Copyright © 2019 Rebecca Peyser. All rights reserved.
//

import SpriteKit


class GameScene: SKScene {
 
    let dogSpriteNode = SKSpriteNode(imageNamed: "dog-walking0")
    var dogFrames = [SKTexture]()
    let catSpriteNode = SKSpriteNode(imageNamed: "cat")

    
    override func didMove(to view: SKView) {
        print("hello, world")
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        physicsWorld.gravity = CGVector(dx: -1.0, dy: -2.0)
        
        dogSpriteNode.position = CGPoint(x: frame.midX, y: frame.midY)
        dogSpriteNode.physicsBody = SKPhysicsBody(circleOfRadius: dogSpriteNode.size.width/2)
        dogSpriteNode.physicsBody!.allowsRotation = false
        dogSpriteNode.physicsBody!.restitution = 1.0
        addChild(dogSpriteNode)
        
    
        catSpriteNode.position = CGPoint(x: frame.midX, y: frame.midY)
        catSpriteNode.physicsBody = SKPhysicsBody(circleOfRadius: catSpriteNode.size.width/2)
        catSpriteNode.physicsBody!.allowsRotation = false
        catSpriteNode.physicsBody!.restitution = 0.5
        addChild(catSpriteNode)

        let textureAtlas = SKTextureAtlas(named: "Dog Frames")
        for index in 0..<textureAtlas.textureNames.count {
            let textureName = "dog-walking" + String(index)
            dogFrames.append(textureAtlas.textureNamed(textureName))
        }
        if (!dogSpriteNode.hasActions()) {
            dogSpriteNode.run(SKAction.repeatForever(SKAction.animate(with: dogFrames, timePerFrame: 0.1)))
        } else {
            dogSpriteNode.removeAllActions()
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       
    }
        
     
}
