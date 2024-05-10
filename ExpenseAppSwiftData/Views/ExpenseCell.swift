//
//  ExpenseCell.swift
//  ExpenseAppSwiftData
//
//  Created by Avijeet on 10/05/24.
//

import Foundation
import SwiftUI

// MARK: - ExpenseCell
struct ExpenseCell: View {
    
    let expense: Expense
    
    var body: some View {
        HStack {
            Text(expense.date, format: .dateTime.month(.abbreviated))
                .frame(width: 70, alignment: .leading)
            
            Text(expense.name)
            
            Spacer()
            
            Text(expense.value, format: .currency(code: "INR"))
        }.padding()
    }
}

#Preview {
    ExpenseCell(expense: .init(name: "Test", date: .now, value: 32))
}
