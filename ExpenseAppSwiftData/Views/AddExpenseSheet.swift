//
//  AddExpenseSheet.swift
//  ExpenseAppSwiftData
//
//  Created by Avijeet on 10/05/24.
//

import Foundation
import SwiftUI

// MARK: - AddExpenseSheet
struct AddExpenseSheet: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) var context
    
    @State private var name: String = ""
    @State private var date: Date = .now
    @State private var value: Double = 0
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Expense Name", text: $name)
                DatePicker("Date", selection: $date, displayedComponents: .date)
                TextField("Value", value: $value, format: .currency(code: "INR"))
                    .keyboardType(.decimalPad)
            }.navigationTitle("New Expense")
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    ToolbarItemGroup(placement: .topBarLeading) {
                        Button("Cancel") {
                            dismiss()
                        }
                    }
                    
                    ToolbarItemGroup(placement: .topBarLeading) {
                        Button("Save") {
                            // button to save the code goes here
                            let expense = Expense(name: name,
                                                  date: date,
                                                  value: value)
                            
                            context.insert(expense)
                            dismiss()
                        }
                    }
                }
        }
    }
}


#Preview {
    AddExpenseSheet()
}
