
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
