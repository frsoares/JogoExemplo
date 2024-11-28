//
//  ContentView.swift
//  JogoExemplo
//
//  Created by Francisco Miranda Soares on 28/11/24.
//

import SwiftUI
import SpriteKit

struct ContentView: View {

    let cena: SKScene = {
        if let scene: SKScene = GameScene(fileNamed: "GameScene") {
            //(size: .init(width: 750, height: 1330))
            scene.scaleMode = .aspectFit
            return scene
        }
        return SKScene()
    }()

    var body: some View {
        ZStack {
            SpriteView(scene: cena)
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
        }.ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
