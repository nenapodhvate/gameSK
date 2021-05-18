import SpriteKit
import GameplayKit

final class Island: SKSpriteNode, GameBackgroundSpritebale {
    
   
    static func populate(at point: CGPoint?) -> Island {
        let islandImageName = configureName()
        let island = Island(imageNamed: islandImageName)
        island.setScale(randomScaleFactor)
        island.position = point ?? randomPoint()
        island.zPosition = 1
        island.name = "sprite"
        island.anchorPoint = CGPoint(x: 0.5, y: 1.0)
        island.run(rotateForRandomAngle())
        island.run(move(from: island.position))
        
        return island
    }
    
 fileprivate   static func configureName() -> String {
        let distribution = GKRandomDistribution(lowestValue: 1, highestValue: 4)
        let randomNUmber = distribution.nextInt()
        let imageName = "is" + "\(randomNUmber)"
        
        return imageName
        
    }
    
  fileprivate  static var randomScaleFactor: CGFloat {
        let distribution = GKRandomDistribution(lowestValue: 1, highestValue: 10)
        let randomNUmber = CGFloat(distribution.nextInt()) / 10
        
        return randomNUmber
    }
  fileprivate  static func rotateForRandomAngle() -> SKAction {
        let distribution = GKRandomDistribution(lowestValue: 0, highestValue: 360)
        let randomNUmber = CGFloat(distribution.nextInt())
        
        return SKAction.rotate(toAngle: randomNUmber * CGFloat(Double.pi / 180), duration: 0)
        
        
    }
    fileprivate static func move(from point: CGPoint) -> SKAction {
        
        let movePoint = CGPoint(x: point.x, y: -200)
        let moveDistance = point.y + 200
        let movementSpeed: CGFloat = 100.0
        let duration = moveDistance / movementSpeed
        return SKAction.move(to: movePoint, duration: TimeInterval(duration))
        
    }
}
