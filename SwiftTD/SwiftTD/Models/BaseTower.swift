//
//  Tower.swift
//  SwiftTD
//
//  Created by Taylor Cargill on 2/26/17.
//  Copyright © 2017 Taylor Cargill. All rights reserved.
//

import UIKit

class BaseTower: SKSpriteNode {
    var projectiles: [BaseProjectile]
    var radius: Int
    var targets: [BaseMinion]
    var img: SKTexture
}
