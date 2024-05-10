//
//  EmptyExpenseView.swift
//  ExpenseAppSwiftData
//
//  Created by Avijeet on 10/05/24.
//

import SwiftUI

// MARK: - EmptyExpenseView
struct EmptyExpenseView: View {
    @Binding var isShowingExpenseSheet: Bool
    
    var body: some View {
        ContentUnavailableView(label: {
            Label("No expenses", systemImage: "list.bullet.rectangle.portrait")
        }, description: {
            Text("Start adding expenses to see your list")
        }, actions: {
            Button("Add Expense") {
                isShowingExpenseSheet.toggle()
            }
        }).offset(y: -60)
    }
}

#Preview {
    EmptyExpenseView(isShowingExpenseSheet: .constant(false))
}
