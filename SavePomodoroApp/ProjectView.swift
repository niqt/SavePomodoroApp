//
//  ProjectView.swift
//  SavePomodoroApp
//
//  Created by Nicola De Filippo on 20/05/24.
//

import SwiftUI
import SwiftData

struct ProjectView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss
    @State var projectName = ""
    
    var body: some View {
        VStack {
            TextField("Project name", text: $projectName)
            Button("Save") {
                let newProject = ProjectItem(name: projectName);
                modelContext.insert(newProject)
                dismiss()
            }

        }.padding()
    }
}

#Preview {
    ProjectView()
}
