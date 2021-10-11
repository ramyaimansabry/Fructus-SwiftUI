//
//  ContentView.swift
//  Fructus
//
//  Created by Ramy Sabry on 24/09/2021.
//

import SwiftUI

struct FruitsListView: View {
    // MARK: - Properties
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSettingsView: Bool = false
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailsView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            } // List
            .navigationTitle("Fruits")
            .toolbar {
                Button(action: {
                    isShowingSettingsView = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                } // Button
                .sheet(isPresented: $isShowingSettingsView) {
                    SettingsView()
                }
            }
        } // Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsListView(fruits: fruitsData)
    }
}
