//
//  AboutScene.swift
//  SWTowerDefense
//
//  Created by Gabriel Borges on 4/22/16.
//  Copyright © 2016 Gabe Borges. All rights reserved.
//

import SpriteKit

class AboutScene: SKScene {
    
    var backButton: SKSpriteNode! = nil
    
    override func didMoveToView(view: SKView) {
        let background = SKSpriteNode(imageNamed: "menu_about")
        background.position = CGPointMake(self.size.width/2, self.size.height/2)
        background.size = self.size
        background.zPosition = 0
        self.addChild(background)
        
        backButton = SKSpriteNode(imageNamed: "button_back")
        backButton.position = CGPointMake(50, self.size.height - 50)
        backButton.size = CGSize(width: 50, height: 50)
        backButton.zPosition = 1
        self.addChild(backButton)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch in touches {
            let location = touch.locationInNode(self)
            
            if (backButton.containsPoint(location)) {
                let scene =  MenuScene(size: self.size)
                let skView = self.view! as SKView
                skView.ignoresSiblingOrder = true
                scene.scaleMode = .ResizeFill
                scene.size = skView.bounds.size
                self.removeActionForKey("music")
                skView.presentScene(scene)
            }
        }
    }
}
