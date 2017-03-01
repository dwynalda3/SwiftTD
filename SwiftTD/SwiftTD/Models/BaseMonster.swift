//
//  BaseMonster.swift
//  SwiftTD
//
//  Created by Taylor Cargill on 2/28/17.
//  Copyright © 2017 Taylor Cargill. All rights reserved.
//

import UIKit
import SpriteKit

class BaseMonster: SKSpriteNode {
    var damage: Int = 0
    var hitPoints: Int = 0
    var isDead: Bool = false
    var clearedStage = false
    
    init(damage: Int, hitPoints: Int, texture: SKTexture, color: UIColor) {
        super.init(texture: texture, color: color, size: texture.size())
        self.damage = damage
        self.hitPoints = hitPoints
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
