//
//  ExpenseAppSwiftDataApp.swift
//  ExpenseAppSwiftData
//
//  Created by Avijeet on 10/05/24.
//

import SwiftUI
import SwiftData

@main
struct ExpenseAppSwiftDataApp: App {
    var body: some Scene {
        WindowGroup {
            RootView()
        }
        .modelContainer(for: [Expense.self])
    }
}
