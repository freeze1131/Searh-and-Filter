
import Foundation


struct CategoryModel: Identifiable {
    
    let id = UUID()
    
    let categoryName: String
    let models: [HotkeyModel]
    
}
