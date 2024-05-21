//
//  PomodoroItem.swift
//  SavePomodoroApp
//
//  Created by Nicola De Filippo on 18/05/24.
//

import Foundation
import SwiftData

@Model
final class PomodoroItem {
    var start: Date
    var end: Date
    var project: ProjectItem
    var name: String
    
    init(start: Date, end: Date, project: ProjectItem, name: String) {
        self.start = start
        self.end = end
        self.project = project
        self.name = name
    }
}

