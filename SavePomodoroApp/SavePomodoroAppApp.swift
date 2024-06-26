//
//  SavePomodoroAppApp.swift
//  SavePomodoroApp
//
//  Created by Nicola De Filippo on 18/05/24.
//

import SwiftUI
import SwiftData

@main
struct SavePomodoroAppApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            PomodoroItem.self,
            ProjectItem.self,
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
