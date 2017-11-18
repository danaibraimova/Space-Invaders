//
//  GameViewController.swift
//  Space Invaders
//
//  Created by user on 06.11.17.
//  Copyright © 2017 KBTU. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = GameScene(size: CGSize(width: 1536, height: 2048))
        let view = self.view as! SKView
        
        // Set the scale mode to scale to fit the window
        scene.scaleMode = .aspectFill
                
        // Present the scene
        view.presentScene(scene)
        
        view.ignoresSiblingOrder = true
            
        view.showsFPS = true
        view.showsNodeCount = true
        
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
