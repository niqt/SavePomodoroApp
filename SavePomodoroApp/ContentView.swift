//
//  ContentView.swift
//  SavePomodoroApp
//
//  Created by Nicola De Filippo on 18/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            PomodoriView()
            .tabItem {
                Label("Pomodori", systemImage: "calendar.day.timeline.left")
            }
            ProjectsView()
            .tabItem {
                Label("Projects", systemImage: "list.bullet")
            }
        }
    }
}

#Preview {
    ContentView()
}
