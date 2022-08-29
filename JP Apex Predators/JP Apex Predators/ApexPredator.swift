//
//  ApexPredator.swift
//  JP Apex Predators
//
//  Created by Jakob Hjortshøj on 19/08/2022.
//

import Foundation
import SwiftUI

struct ApexPredator: Codable, Identifiable {
    let id: Int
    let name: String
    let type: String
    let movies: [String]
    let movieScenes: [MovieScenes]
    let link: String
    
    func typeOverlay() -> Color {
        switch type {
        case "land": return .brown
        case "air": return .teal
        case "sea": return .blue
        default: return .brown
        }
    }
}

struct MovieScenes: Codable {
    let id: Int
    let movie: String
    let sceneDescription: String
}
