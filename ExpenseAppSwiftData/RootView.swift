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
    var expenses: [Expense] = []
    
    var body: some View {
        NavigationStack {
            List(expenses) { expense in
                Text("Hello")
            }.navigationTitle("Expenses")
                .navigationBarTitleDisplayMode(.large)
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

#Preview {
    RootView()
}
