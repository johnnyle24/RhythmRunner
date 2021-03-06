//
//  GameViewController.swift
//  Sample
//
//  Created by Johnny Le on 2/16/16.
//  Copyright (c) 2016 Johnny Le. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = GameScene(size:CGSize(width: 2048, height: 1536))
        let skView = self.view as! SKView
        skView.showsFPS = true
        
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .AspectFill
        skView.presentScene(scene)
        
        //        if let scene = GameScene(fileNamed:"GameScene") {
        //            // Configure the view.
        //            let skView = self.view as! SKView
        //            skView.showsFPS = true
        //            skView.showsNodeCount = true
        //
        //            /* Sprite Kit applies additional optimizations to improve rendering performance */
        //            skView.ignoresSiblingOrder = true
        //
        //            /* Set the scale mode to scale to fit the window */
        //            scene.scaleMode = .AspectFill
        //
        //            skView.presentScene(scene)
        //        }
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
