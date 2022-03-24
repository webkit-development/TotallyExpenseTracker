//
//  ExpenseItem.swift
//  TotallyExpenseTracker
//
//  Created by Kevin Stradtman on 3/24/22.
//

import Foundation


struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    var name = ""
    var primaryCategory = ""
    var amount = 0.0
}
