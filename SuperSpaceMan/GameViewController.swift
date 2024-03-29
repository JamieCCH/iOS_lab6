//
//  GameViewController.swift
//  SuperSpaceMan
//
//  Created by Mark Meritt on 2019-02-04.
//  Copyright © 2019 Mark Meritt. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
//    var scene: GameScene!
    var menu: MenuScene!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            
//                // Set the scale mode to scale to fit the window
//                scene = GameScene(size: self.view.frame.size)
//                scene.scaleMode = .aspectFill
//
//                // Present the scene
//                view.presentScene(scene)
            
            menu = MenuScene(size: self.view.frame.size)
            menu.scaleMode = .aspectFill
            view.presentScene(menu)
            
            view.ignoresSiblingOrder = true
            view.showsPhysics = true 
            view.showsFPS = true
            view.showsNodeCount = true
        }
        
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
