//
//  ProjectItem.swift
//  SavePomodoroApp
//
//  Created by Nicola De Filippo on 20/05/24.
//

import Foundation
import SwiftData

@Model
final class ProjectItem: Identifiable {
    var name: String
    var id = UUID().uuidString
    init(name: String) {
        self.name = name
    }
}
