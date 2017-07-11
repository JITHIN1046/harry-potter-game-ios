//
//  Firstpage.swift
//  JITHIN_GAME_TEST
//
//  Created by MacStudent on 2017-06-05.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation


import SpriteKit





class Firstpage: SKScene {
    
    
    
    
    
    class myButton: SKLabelNode {
        
        
        
        override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
            
            
            
            for touch: AnyObject in touches {
                
                let location = touch.location(in: self)
                
                if self.position == location {
                    
                    
                    
                }
                
            }
            
        }
        
    }
    
    
    
    override init(size: CGSize) {
        
        
        
        super.init(size: size)
        
        // 2
        
        backgroundColor = SKColor.white
        
        
        
        //let backgroundMusic = SKAudioNode(fileNamed: "background-music-aac.caf")
        
        //backgroundMusic.autoplayLooped = true
        
        //addChild(backgroundMusic)
        
        
        
        let message = "Choose your player:"
        
        let playerOne = "Player1"
        
        let playerTwo = "Player2"
        
        
        
        // 3
        
        let label = myButton(fontNamed: "Chalkduster")
        
        label.text = message
        
        label.fontSize = 30
        
        label.fontColor = SKColor.black
        
        label.position = CGPoint(x: size.width/2, y: size.height/4 * 3)
        
        addChild(label)
        
        
        
        
        
        let label2 = myButton(fontNamed: "Chalkduster")
        
        label2.text = playerOne
        
        label2.name = playerOne
        
        label2.fontSize = 30
        
        label2.fontColor = SKColor.red
        
        label2.position = CGPoint(x: size.width/4, y: size.height/2)
        
        addChild(label2)
        
        
        
        let label3 = myButton(fontNamed: "Chalkduster")
        
        label3.text = playerTwo
        
        label3.name = playerTwo
        
        label3.fontSize = 30
        
        label3.fontColor = SKColor.blue
        
        label3.position = CGPoint(x: size.width/4 * 3, y: size.height/2)
        
        
        
        addChild(label3)
        
    }
    
    
    
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch: AnyObject in touches {
            
            let pointOfTouch = touch.location(in: self)
            
            let nodeUserTapped = atPoint(pointOfTouch)
            
            
            
            if nodeUserTapped.name == "player1" || nodeUserTapped.name == "player2"{
                
                startGame(size: size, player: nodeUserTapped.name!)
                
            }
            
        }
        
        
        
    }
    
    
    
    func startGame(size: CGSize, player: String) {
        
        run(SKAction.sequence([
            
            SKAction.run() {
                
                // 5
                
                let reveal = SKTransition.flipHorizontal(withDuration: 0.5)
                
                let scene = GameScene(size: size, usrName: player)
                
                self.view?.presentScene(scene, transition:reveal)
                
            }
            
            ]))
        
    }
    
    
    
    required init(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
}
