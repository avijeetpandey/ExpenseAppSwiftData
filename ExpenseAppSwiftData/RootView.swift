//
//  ContentView.swift
//  ExpenseAppSwiftData
//
//  Created by Avijeet on 10/05/24.
//

import SwiftUI
import SwiftData

// MARK: - RootView
struct RootView: View {
    @State private var isShowingExpenseSheet = false
    @Environment(\.modelContext) var context
    @Query(sort: \Expense.date, animation: .smooth) var expenses: [Expense]
    @State private var expenseToEdit: Expense?
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(expenses) { expense in
                    ExpenseCell(expense: expense)
                        .onTapGesture {
                            expenseToEdit = expense
                        }
                }.onDelete(perform: { indexSet in
                    for index in indexSet {
                        context.delete(expenses[index])
                    }
                })
            }.navigationTitle("Expenses")
                .navigationBarTitleDisplayMode(.large)
                .sheet(item: $expenseToEdit) { expense in
                    UpdateExpenseSheet(expense: expense)
                }
                .sheet(isPresented: $isShowingExpenseSheet) {
                    AddExpenseSheet()
                }.toolbar {
                    if !expenses.isEmpty {
                        Button("Add Expense", systemImage: "plus") {
                            isShowingExpenseSheet.toggle()
                        }
                    }
                }.overlay {
                    if expenses.isEmpty {
                        EmptyExpenseView(isShowingExpenseSheet: $isShowingExpenseSheet)
                    }
                }
        }
    }
}
