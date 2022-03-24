//
//  ContentView.swift
//  TotallyExpenseTracker
//
//  Created by Kevin Stradtman on 3/24/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showAddScreen = false
    var body: some View {
        NavigationView {
            TabView {
                
            }
            .navigationTitle("TotallyExpenseTracker")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button {
                    showAddScreen = true
                } label: {
                    Image(systemName: "plus.square.fill")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
