//
//  Assets.swift
//  gameSK
//
//  Created by shin on 15.04.21.
//

import SpriteKit

class Assets{
static let shared = Assets()
    var isLoaded = false
    let bulletAtlas = SKTextureAtlas(named: "Bullet")
    let enemy_1Atlas = SKTextureAtlas(named: "Enemy_1")
    let enemy_2Atlas = SKTextureAtlas(named: "Enemy_2")
    let bluePowerUpAtlas = SKTextureAtlas(named: "BluePowerUp")
    let greenPowerUpAtlas = SKTextureAtlas(named: "GreenPowerUp")

    func preloadAssets() {
        bulletAtlas.preload {print("bulletAtlas preloaded")}
        enemy_1Atlas.preload {print("enemy1Atlas preloaded")}
        enemy_2Atlas.preload {print("enemy2Atlas preloaded")}
        bluePowerUpAtlas.preload {print("bluePower preloaded")}
        greenPowerUpAtlas.preload {print("geenPower preloaded")}

    }
}
