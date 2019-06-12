//
//  GameViewController.swift
//  SpireKit Tutorial
//
//  Created by Rebecca Peyser on 6/12/19.
//  Copyright © 2019 Rebecca Peyser. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
                if let scene2 = SKScene(fileNamed: "MyFirstTileScene") {
                // Set the scale mode to scale to fit the window
                scene2.scaleMode = .aspectFill
                // Present the scene
                view.presentScene(scene2)
                view.ignoresSiblingOrder = true
                // Information below is for debugging
                view.showsFPS = true
                view.showsNodeCount = true
                view.showsPhysics = true
            }
            
        }
    }
}

