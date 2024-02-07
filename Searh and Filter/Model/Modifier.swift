//
//  Modifier.swift
//  Searh and Filter
//
//  Created by Ahmet Ozen on 7.02.2024.
//

import Foundation



enum Modifier: String,CaseIterable {
    case control = "⌃"
    case option = "⌥"
    case command = "⌘"
    case shift = "⇧"
    case enter = "↩"
    case globe = "fn"
    
    
    var description: String {
        switch(self) {
            
        case .control:
            "ctrl"
        case .option:
            "alt"
        case .command:
            "command"
        case .shift:
            "shift"
        case .enter:
            "return"
        case .globe:
            "globe/fn"
        }
    }
}
