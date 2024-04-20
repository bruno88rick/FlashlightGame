//
//  ManuView.swift
//  Flashlight
//
//  Created by Bruno Oliveira on 20/04/24.
//

import SwiftUI

struct MenuView: View {
    
    @Environment(Game.self) var game
    
    var body: some View {
        VStack {
            Text("FLASHLIGHT")
                .font(.largeTitle)
            
            Button("New Game", action: game.restart)
            .buttonStyle(.borderedProminent)
        }
        .padding(20)
        .background(.ultraThinMaterial, in: .rect(cornerRadius: 20))
    }
}

#Preview {
    MenuView()
}
