//
//  Bullet.swift
//  gameSK
//
//  Created by shin on 15.04.21.
//

import SpriteKit

class Bullet: Shot {
    init() {
        let textureAtlas = Assets.shared.bulletAtlas 
        super.init(textureAtlas: textureAtlas)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
