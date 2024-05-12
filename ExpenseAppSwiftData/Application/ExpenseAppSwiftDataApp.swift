//
//  ExpenseAppSwiftDataApp.swift
//  ExpenseAppSwiftData
//
//  Created by Avijeet on 10/05/24.
//

import SwiftUI
import SwiftData
import Blaze

@main
struct ExpenseAppSwiftDataApp: App {
    
    func initNetworkClient() {
        Blaze.initialise(with: "http://localhost:9000")
        Blaze.setDefaultHeaders(with: ["Content-Type": "application/json"])
        print("Blaze initialised")
    }
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .onAppear {
                    initNetworkClient()
                }
        }
        .modelContainer(for: [Expense.self])
    }
}
