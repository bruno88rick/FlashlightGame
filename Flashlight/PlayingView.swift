//
//  PlayingView.swift
//  Flashlight
//
//  Created by Bruno Oliveira on 20/04/24.
//

import SwiftUI

struct PlayingView: View {
    
    @Environment(Game.self) var game
    
    var body: some View {
        Grid(horizontalSpacing: 2, verticalSpacing: 2) {
            ForEach(0..<game.rowCount, id: \.self) { row in
                GridRow {
                    ForEach(0..<game.colCount, id: \.self) { col in
                        Button {
                            game.press(row, col)
                        } label: {
                            Circle()
                                .fill(game.rows[row][col].color)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    PlayingView()
        .environment(Game())
}