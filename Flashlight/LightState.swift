//
//  LightState.swift
//  Flashlight
//
//  Created by Bruno Oliveira on 20/04/24.
//

import SwiftUI

enum LightState {
    case off, on
    
    var color: some ShapeStyle {
        switch self {
        case .off:
            Color.red.gradient
        case .on:
            Color.green.gradient
        }
    }
}
