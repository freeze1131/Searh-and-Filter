//
//  HotkeySectionView.swift
//  Searh and Filter
//
//  Created by Ahmet Ozen on 7.02.2024.
//

import SwiftUI

struct HotkeySectionView: View {
    
    let categoryName: String
    let models: [HotkeyModel]
    let searchQuery: String
    
    // TODO: Use a Theme
    
    let sectionHeaderColor: Color = .red
    let sectionHeaderFont: Font = .headline
    let fontWeight: Font.Weight = .semibold
    
    
    
    // Filter according to "searhQuery"
    var filteredResults: [HotkeyModel] {
        models
    }
    
    
    
    var body: some View {
        if !filteredResults.isEmpty {
            Section {
                ForEach(filteredResults) {item in
                // TODO: Hotkey Row
                    HotkeyRow(icon: item.modifiers[0], desc: item.text)
                }
            } header: {
                Text(categoryName)
                    .font(sectionHeaderFont)
                    .fontWeight(fontWeight)
                    .foregroundStyle(sectionHeaderColor)
            }

        }
    }
}

#Preview {
    Form {
        HotkeySectionView(categoryName: "Navigation", models: [
            .init(
                modifiers: [.command],
                character: "/",
                text: "Toggle comment/uncomment"
            ),
            .init(
                modifiers: [.control],
                character: "I",
                text: "Re-indent selected code"
            ),
        ], searchQuery: "")
    }
}
