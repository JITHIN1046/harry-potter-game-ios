//
//  manuscene.swift
//  JITHIN_GAME_TEST
//
//  Created by MacStudent on 2017-06-02.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import SpriteKit

class manuscene: SKScene {
    
    var player1:SKSpriteNode!
    var player2:SKSpriteNode!

    override func didMove(to view: SKView) {
        backgroundColor = SKColor.black
        player1 = self.childNode(withName: "player1") as! SKSpriteNode
        player2 = self.childNode(withName: "player2") as! SKSpriteNode
       
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        if let location = touch?.location(in: self)
        {
            let nodesArray = self.nodes(at: location)
            
            if nodesArray.first?.name == "player1"
            {
                let transition = SKTransition.flipHorizontal(withDuration: 0.5)
                let gamescene = GameScene(size: self.size)
                self.view?.presentScene(gamescene, transition: transition)
            }
            if nodesArray.first?.name == "player2"
            {
                let transition = SKTransition.flipHorizontal(withDuration: 0.5)
                let gamescene = GameScene(size: self.size)
                self.view?.presentScene(gamescene, transition: transition)
            }
            
        }
    }
    
    
    var IsCatched: Bool = false
    
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        guard let touch = touches.first else {
//            return
//        }
//        let touchLocation = touch.location(in: self)
//        
//        let node = self.atPoint(touchLocation)
//        
//        if node == self.player {
//            IsCatched = true
//        }
//        
//    }
//    
//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        guard let touch = touches.first else {
//            return
//        }
//        let touchLocation = touch.location(in: self)
//        
//        if IsCatched {
//            // player position change
//            player.position.x = touchLocation.x
//            //player.position.y = touchLocation.y
//        }
//        
//    }
    

}
