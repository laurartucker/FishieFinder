//
//  FishId9000App.swift
//  FishId9000
//
//  Created by Laura Tucker on 2024-11-07.
//

import SwiftUI
import SwiftData

@main
struct FishId9000App: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Dive.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
