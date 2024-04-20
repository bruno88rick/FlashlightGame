//
//  FlashlightApp.swift
//  Flashlight
//
//  Created by Bruno Oliveira on 20/04/24.
//

import SwiftUI

@main
struct FlashlightApp: App {
    @State private var game: Game
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(game)
        }
    }
    
    init(){
        _game = State(initialValue: Game())
    }
    
}
