//
//  Expense.swift
//  ExpenseAppSwiftData
//
//  Created by Avijeet on 10/05/24.
//

import Foundation
import SwiftData

// MARK: - Expense Model
@Model
class Expense {
    var name: String
    var date: Date
    var value: Double
    
    init(name: String, date: Date, value: Double) {
        self.name = name
        self.date = date
        self.value = value
    }
}
