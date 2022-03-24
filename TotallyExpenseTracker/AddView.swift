//
//  AddView.swift
//  TotallyExpenseTracker
//
//  Created by Kevin Stradtman on 3/24/22.
//

import SwiftUI

struct AddView: View {
    @ObservedObject var expenses: Expense
    @Environment(\.dismiss) var dismiss
    @State private var name = ""
    @State private var primaryCategory = "🏧 ATM"
    @State private var amount = 0.0
    var categories = ["💊 Meds", "📚 School", "🏧 ATM", "🍗 Food", "🐶 Vet", "👩‍❤️‍👨 Date", "💍 Wedding", "🏥 Hospital", "🎁 Gifts", "🏖 Vacation", "🏠 Rent/Mortgage", "🚘 Car", "🚔 Ticket", "🏈 Sporting Event", "🥡 Take Out", "⚙️ Other"]
    var body: some View {
        NavigationView {
            Form {
                Group {
                    TextField("Name", text: $name)
                }
                Group {
                    Picker("Category", selection: $primaryCategory) {
                        ForEach(categories, id: \.self) {
                            Text($0)
                        }
                    }
                    TextField("Amount", value: $amount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .keyboardType(.decimalPad)
                }
            }
            .navigationTitle("Add Expense")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button("Save") {
                    let item = ExpenseItem(name: name, primaryCategory: primaryCategory, amount: amount)
                    expenses.items.append(item)
                    dismiss()
                }
            }
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(expenses: Expense())
    }
}
