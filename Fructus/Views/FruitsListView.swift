//
//  ContentView.swift
//  Fructus
//
//  Created by Ramy Sabry on 24/09/2021.
//

import SwiftUI

struct FruitsListView: View {

    @ObservedObject private var viewModel = FruitsViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.fruitsItems) { item in
                    NavigationLink(destination: FruitDetailsView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            } // List
            .listStyle(.plain)
            .navigationTitle("Fruits")
            .toolbar {
                Button {
                    viewModel.isShowingSettingsView = true
                } label: {
                    Image(systemName: "slider.horizontal.3")
                } // Button
                .sheet(isPresented: $viewModel.isShowingSettingsView) {
                    SettingsView()
                }
            }
        } // Navigation
        .navigationViewStyle(StackNavigationViewStyle())
        .onAppear {
            viewModel.onAppear()
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsListView()
    }
}
#endif
