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
    
    let sectionHeaderColor: Color = Theme.subtitleColor
    let sectionHeaderFont: Font = Theme.sectionHeaderFont
    let fontWeight: Font.Weight = Theme.fontWeight
    
    
    
    // Filter according to "searhQuery"
    var filteredResults: [HotkeyModel] {
        if searchQuery.count <= 1 {
            return models
        } else {
            return models
                .filter {
                    $0
                        .text
                        .lowercased()
                        .contains(searchQuery.lowercased())
                }
        }
    }
    
    
    
    var body: some View {
        if !filteredResults.isEmpty {
            Section {
                ForEach(filteredResults) {item in
                // TODO: Hotkey Row
                    HotkeyRow(hotKeyModel: item, searchQuery: searchQuery)
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
    .frame(minWidth: Theme.frameWidth,maxHeight: Theme.frameHeight)
}
