//
//  Hotkey Model.swift
//  Searh and Filter
//
//  Created by Ahmet Ozen on 7.02.2024.
//

import Foundation


struct HotkeyModel: Identifiable {
    let id = UUID()
    let modifiers: [String] // TODO: Create modifier data type
    let character: String
    let text: String
    
    var description: String {
        "Destriction - \(modifiers) \(character.capitalized)" // TODO:
    }
    
}
