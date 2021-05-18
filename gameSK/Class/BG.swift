import SpriteKit

class BG: SKSpriteNode {

    static func populateBackground(at point: CGPoint) -> BG {
        
        let background = BG(imageNamed: "BG")
        background.position = point
        background.zPosition = 0
        
        return background
    
    }
}
