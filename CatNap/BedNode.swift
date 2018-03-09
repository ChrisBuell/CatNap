//
//  BedNode.swift
//  CatNap
//
//  Created by Christine Buell on 3/6/18.
//  Copyright © 2018 Christine Buell. All rights reserved.
//

import SpriteKit

class BedNode: SKSpriteNode, EventListenerNode                                                               {
    func didMoveToScene() {
        print("bed added to scene")
        let bedBodySize = CGSize(width: 40.0, height: 30.0)
        physicsBody = SKPhysicsBody(rectangleOf: bedBodySize)
        physicsBody!.isDynamic = false
        physicsBody!.categoryBitMask = PhysicsCategory.Bed
        physicsBody!.collisionBitMask = PhysicsCategory.None
    }
}
