//
//  GameScene.swift
//  JogoExemplo
//
//  Created by Francisco Miranda Soares on 28/11/24.
//

import SwiftUI
import SpriteKit

class GameScene: SKScene {

    var texto: String = "Hello, World!"


    override func didMove(to view: SKView) {
        let labelNode: SKLabelNode = SKLabelNode(text: texto)
//        self.anchorPoint = .zero
        labelNode.position = CGPoint(x: 100, y: 100)
        self.addChild(labelNode)

        self.physicsBody = SKPhysicsBody(edgeLoopFrom: self.frame)
//        let clarinha = SKSpriteNode(texture: SKTexture(imageNamed: "clarinha_patinhas"))
    }

    override func update(_ currentTime: TimeInterval) {
        
    }
}

#Preview {
    ContentView()
}

