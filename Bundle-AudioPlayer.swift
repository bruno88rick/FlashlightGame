//
//  Bundle-AudioPlayer.swift
//  Flashlight
//
//  Created by Bruno Oliveira on 23/04/24.
//

import AVFoundation

extension Bundle {
    func audioPlayer(for filename: String, volume: Double = 1.0) -> AVAudioPlayer {
        guard let audioURL = url(forResource: filename, withExtension: nil) else {
            fatalError("Can`t find \(filename) in app Bundle")
        }
        
        guard let player = try? AVAudioPlayer(contentsOf: audioURL) else {
            fatalError("Failed to load \(filename) into audio player.")
        }
        
        player.volume = Float(volume)
        player.prepareToPlay()
        
        return player
        
    }
    
}
