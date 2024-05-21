//
//  PomodoriView.swift
//  SavePomodoroApp
//
//  Created by Nicola De Filippo on 20/05/24.
//

import SwiftUI
import SwiftData

struct PomodoriView: View {
    @Query private var pomodori: [PomodoroItem]
    @State var isPresented = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(pomodori) { pomodoro in
                    Text(pomodoro.name)
                }
            }
            .toolbar {
                ToolbarItem {
                    Button(action: {isPresented = true}) {
                        Label("Add Pomodoro", systemImage: "plus")
                    }
                }
            }.sheet(isPresented: $isPresented, content: {
                PomodoroView()
            })
        }
    }
}

#Preview {
    PomodoriView()
}
