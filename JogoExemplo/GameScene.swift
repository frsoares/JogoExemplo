//
//  GameScene.swift
//  JogoExemplo
//
//  Created by Francisco Miranda Soares on 28/11/24.
//

import SpriteKit
import SwiftUI

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        self.backgroundColor = .red

        let labelNode = SKLabelNode(text: "Hello world!!!!")
        labelNode.position = CGPoint(x: 200, y: 384)
        self.addChild(labelNode)

        let jambo = self.childNode(withName: "jambo")

        let ida: SKAction = .moveBy(x: 100, y: 10, duration: 3)
        let volta: SKAction = .moveBy(x: -100, y: -10, duration: 3)
        let repete: SKAction = .repeatForever(.sequence([ida, volta]))
//        jambo?.run(repete)
//        self.physicsWorld.gravity = .init(dx: 0, dy: 10)
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: self.frame)
    }

    override func update(_ currentTime: TimeInterval) {
        
    }
}

#Preview {
    ContentView()
}
