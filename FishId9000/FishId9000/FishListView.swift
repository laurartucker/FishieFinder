//
//  FishListView.swift
//  FishId9000
//
//  Created by Laura Tucker on 2024-11-07.
//

import SwiftUI

struct FishListView: View {
    
    var fishies: [Fish]
    @Binding var selected: Fish?
    
    var body: some View {
        List (selection: $selected) {
        
            ForEach(fishies, id:\.self) { fish in
                Text(verbatim: fish.fishName)
            }
        }
    }
}

#Preview {
    FishListView(fishies: [
        .init(fishName: "Blue Parrotfish"),
        .init(fishName: "Midnight Parrotfish"),
    ], selected: .init(get: {
        .init(fishName: "Bob")
    }, set: {_ in
        
    }))
}

