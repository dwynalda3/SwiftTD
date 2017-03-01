//
//  Tower.swift
//  SwiftTD
//
//  Created by Taylor Cargill on 2/26/17.
//  Copyright © 2017 Taylor Cargill. All rights reserved.
//

import UIKit
import SpriteKit

class BaseTower: SKSpriteNode {
    var projectiles: [BaseProjectile] = []
    var radius: Int = 100
    var targets: [BaseMonster] = []
    
    init(radius: Int, texture: SKTexture, color: UIColor) {
        super.init(texture: texture, color: color, size: texture.size())
        self.radius = radius
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
