
import Foundation


struct HotkeyModel: Identifiable {
    let id = UUID()
    
    let modifiers: [Modifier]
    let character: String
    let text: String
    
    
    // TODO: Update description
    var description: String {
        "Destriction - \(modifiers) \(character.capitalized)"
    }
    
}
