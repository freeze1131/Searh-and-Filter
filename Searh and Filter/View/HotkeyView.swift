//
//  HotkeyView.swift
//  Searh and Filter
//
//  Created by Ahmet Ozen on 7.02.2024.
//

import SwiftUI

struct HotkeyView: View {
    @State private var searchQuery: String = ""
    var viewModel = HotkeyCategoryViewModel()
    
    
    var body: some View {
        NavigationStack{
            Form{
                // Sections for each category
                List(viewModel.hotketCategoryModels) { hotKey in
                    HotkeySectionView(categoryName: hotKey.categoryName, models: hotKey.models, searchQuery: "")
                    
                }
            }
            .navigationTitle("XCode Hotkeys")
            .searchable(text: $searchQuery,prompt: "Search")
        }
    }
}

#Preview {
    HotkeyView()
}
