//
//  Dive.swift
//  FishId9000
//
//  Created by Laura Tucker on 2024-11-07.
//

import Foundation
import SwiftData

@Model
final class Dive: ObservableObject {
    
    var number: Int
    var numberText: String = ""
    var date: Date
    var name: String = ""
    var location: Location
    var sightings: [Fish] = []
    
    init() {
        self.number = 0
        self.date = Date.now
        self.location = Location.init(name: "None")
        print(self)
    }
}
