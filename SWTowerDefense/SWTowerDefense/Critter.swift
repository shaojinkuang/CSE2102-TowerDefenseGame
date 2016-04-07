//
//  Enemy.swift
//  SWTowerDefense
//
//  Created by Gabriel Borges on 4/6/16.
//  Copyright (c) 2016 Gabe Borges. All rights reserved.
//

import SpriteKit
import GameplayKit

@available(iOS 9.0, *)
class Critter: GKComponent {
    var scene: SKScene!
    let walkSpeed = 1.0
    let lifeHealth = 50
    var nextPoint = 0
    var travelPoint = TravelPoint()
    
    init(gameScene: SKScene) {
        scene = gameScene
        let sprite = SKSpriteNode(imageNamed: "redSquare")
        sprite.xScale = 0.05
        sprite.yScale = 0.05
        let initialPos = CGPointMake(0, 1)
        sprite.position = initialPos
        
        // Change this eventually to use followPath SKAction
        // With a CGPath once the list of path points is created
        let moveSprite = SKAction.moveByX(50, y:0, duration: walkSpeed * 10)
        sprite.runAction(moveSprite)
        
        scene.addChild(sprite)
    }
    
    func update() {
        // Function used to call other functions and update the stats
    }
    
    func calcDamage() {
        // Function to calculate the damage taken by a tower
    }
    
    func changeTravelPoint(currentPoint: TravelPoint) {
        // Function to change the current travel point to the next point
    }
}