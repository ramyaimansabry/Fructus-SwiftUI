//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Ramy Sabry on 01/10/2021.
//

import SwiftUI

struct OnBoardingView: View {
    // MARK: - Properties
    private var fruits: [Fruit] = fruitsData
    
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }
        } // TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - Preview
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
