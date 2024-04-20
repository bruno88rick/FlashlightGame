//
//  Game.swift
//  Flashlight
//
//  Created by Bruno Oliveira on 20/04/24.
//

import Foundation

@MainActor @Observable
class Game {
    
    enum GameState {
        case menu, playing, gameOver
    }
    
    let rowCount = 8
    let colCount = 14
    var rows: [[LightState]]
    var state = GameState.menu
    
    var timeOut = 3.0
    var gameOverTask: Task<Void, Error>?
    
    var score = 0
    
    
    init() {
        let row = Array(repeating: LightState.off, count: colCount)
        rows = Array(repeating: row, count: rowCount)
        
    }
    
    func clearBoard() {
        for row in 0..<rowCount {
            for col in 0..<colCount {
                rows[row][col] = .off
            }
        }
    }
    
    func advance() {
        clearBoard()
        
        let correctRow = Int.random(in: 0..<rowCount)
        let correctCol = Int.random(in: 0..<colCount)
        rows[correctRow][correctCol] = .on
        
        gameOverTask?.cancel()
        
        gameOverTask = Task {
            try await Task.sleep(for: .seconds(timeOut))
            state = .gameOver
        }
    }
    
    func press(_ row: Int, _ col: Int){
        if rows[row][col] == .on {
            score += 1
            advance()
        }
    }
    
    func restart() {
        clearBoard()
        
        score = 0
        timeOut = 3
        state = .playing
        
        Task {
            try await Task.sleep(for: .seconds(1))
            advance()
        }
    }
    
}
