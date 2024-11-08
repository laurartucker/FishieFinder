//
//  Location.swift
//  FishId9000
//
//  Created by Laura Tucker on 2024-11-07.
//

import Foundation
import SwiftData

@Model
final class Location {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
