//
//  UpdateExpenseSheet.swift
//  ExpenseAppSwiftData
//
//  Created by Avijeet on 10/05/24.
//

import Foundation
import SwiftUI

// MARK: - UpdateExpenseSheet
struct UpdateExpenseSheet: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) var context
    @Bindable var expense: Expense
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Expense Name", text: $expense.name)
                DatePicker("Date", selection: $expense.date, displayedComponents: .date)
                TextField("Value", value: $expense.value, format: .currency(code: "INR"))
                    .keyboardType(.decimalPad)
            }.navigationTitle("Update Expense")
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    ToolbarItemGroup(placement: .topBarLeading) {
                        Button("Done") {
                            dismiss()
                        }
                    }
                }
        }
    }
}

#Preview {
    UpdateExpenseSheet(expense: .init(name: "text", date: .now, value: 23000))
}
