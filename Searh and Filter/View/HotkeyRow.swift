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
    
    
    let font:Font = Theme.font
    let fontSecondary: Font  = Theme.fontSecondary
    let fontWeight: Font.Weight = Theme.fontWeight
    let hotKeyWeight = Theme.hotkeyWidth
    
    
    var charFound: Bool {
        searchQuery.count == 1 && hotKeyModel.character.lowercased() == searchQuery.lowercased()
    }
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIpad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    
    var body: some View {
        
        let layout = Theme.layout(isIpad: isIpad)
        
        layout { // TODO: Apact for Mac and iPad
            HStack {
                if charFound {
                    Text("🔵")
                        .font(font)
                    
                }
                Text(hotKeyModel.description)
                    .font(font)
                    .fontWeight(.semibold)
            }
            .frame(width: hotKeyWeight,alignment: .leading)
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
    .frame(minWidth: Theme.frameWidth,maxHeight: Theme.frameHeight)
}
