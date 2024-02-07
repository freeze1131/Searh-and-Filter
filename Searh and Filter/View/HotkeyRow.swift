//
//  HotkeyRow.swift
//  Searh and Filter
//
//  Created by Ahmet Ozen on 7.02.2024.
//

import SwiftUI

struct HotkeyRow: View {
    
    let hotKeyModel : HotkeyModel
    let searchQuery: String
    
      
    let font:Font = .body
    let fontSecondary: Font  = .headline
    let fontWeight: Font.Weight = .regular
    
    
    var charFound: Bool {
        searchQuery.count == 1 && hotKeyModel.character.lowercased() == searchQuery.lowercased()
    }
    
    
    var body: some View {
        VStack(alignment:.leading) { // TODO: Apact for Mac and iPad
            HStack {
                if charFound {
                    Text("🔵")
                        .font(font)
                    
                }
                Text(hotKeyModel.description)
                    .font(font)
                    .fontWeight(.semibold)
            }
            Text(hotKeyModel.text.capitalized)
                .foregroundStyle(.secondary)
                .font(fontSecondary)
            
        }
        .foregroundStyle(charFound ? .blue : .black)
    }
}


#Preview {
    VStack{
        HotkeyRow(hotKeyModel: HotkeyModel(modifiers: [.command,.option], character: "b", text: "ASDASD"), searchQuery: "")
        HotkeyRow(hotKeyModel: HotkeyModel(modifiers: [.command,.option], character: "b", text: "ASDASD"), searchQuery: "r")
    }
}
