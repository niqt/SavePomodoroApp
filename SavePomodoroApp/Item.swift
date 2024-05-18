//
//  Item.swift
//  SavePomodoroApp
//
//  Created by Nicola De Filippo on 18/05/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
