//
//  HotkeyRow.swift
//  Searh and Filter
//
//  Created by Ahmet Ozen on 7.02.2024.
//

import SwiftUI

struct HotkeyRow: View {
    
    let icon: Modifier
    let desc: String
    
    var body: some View {
        HStack(spacing:15){
            Text(icon.rawValue)
            Text(desc.capitalized)
        }
        
    }
}

#Preview {
    HotkeyRow(icon: .control, desc: "SDSDAD")
}
