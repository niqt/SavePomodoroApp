//
//  ProjectView.swift
//  SavePomodoroApp
//
//  Created by Nicola De Filippo on 20/05/24.
//

import SwiftUI

struct ProjectView: View {
    @State var projectName = ""
    
    var body: some View {
        VStack {
            TextField("Project name", text: $projectName)
            Button("Save") {
                
            }

        }
    }
}

#Preview {
    ProjectView()
}
