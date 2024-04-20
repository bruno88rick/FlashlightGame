//
//  GameOverView.swift
//  Flashlight
//
//  Created by Bruno Oliveira on 20/04/24.
//

import SwiftUI

struct GameOverView: View {
    
    @Environment(Game.self) var game
    
    var body: some View {
        VStack{
            Text("FLASHLIGHT")
                .font(.largeTitle)
            
            Text("You scored: \(game.score)")
            
            Button("Try Again", action: game.restart)
                .buttonStyle(.borderedProminent)
        }
        .padding(20)
        .background(.ultraThinMaterial, in: .rect(cornerRadius: 20))
    }
}

#Preview {
    GameOverView()
}
