//
//  ProjectsView.swift
//  SavePomodoroApp
//
//  Created by Nicola De Filippo on 20/05/24.
//

import SwiftUI
import SwiftData

struct ProjectsView: View {
    @Query private var projects: [ProjectItem]
    @State var isPresented = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(projects) { project in
                    Text(project.name)
                    
                }
            }
            .toolbar {
                ToolbarItem {
                    Button(action: {isPresented = true}) {
                        Label("Add Project", systemImage: "plus")
                    }
                }
            }.sheet(isPresented: $isPresented, content: {
                ProjectView()
            })
        }
    }
}

#Preview {
    ProjectsView()
}
