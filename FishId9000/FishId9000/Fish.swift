//
//  Fish.swift
//  FishId9000
//
//  Created by Laura Tucker on 2024-11-07.
//

import Foundation
import SwiftData

@Model
final class Fish: Equatable {
    var fishName: String
    
    init(fishName: String) {
        self.fishName = fishName
    }
}
