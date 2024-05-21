//
//  PomodoroView.swift
//  SavePomodoroApp
//
//  Created by Nicola De Filippo on 20/05/24.
//

import SwiftUI
import SwiftData

struct PomodoroView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss
    @Query private var projects: [ProjectItem]
    @State var selectedProject: ProjectItem?
    @State var pomodoroName: String = ""
    
    var body: some View {
        VStack {
            Picker("Please choose a project", selection: $selectedProject) {
                            ForEach(projects) { project in
                                Text(project.name)
                                    .tag(Optional(project))
                            }
                        }
            TextField("Pomodoro name", text: $pomodoroName)
            Button("Start") {
                let pomodoro = PomodoroItem(start: Date(), end: Date(), project: selectedProject!, name: pomodoroName)
                modelContext.insert(pomodoro)
                dismiss()
            }
        }
    }
}

#Preview {
    PomodoroView()
}
