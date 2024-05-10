//
//  Item.swift
//  ExpenseAppSwiftData
//
//  Created by Avijeet on 10/05/24.
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
