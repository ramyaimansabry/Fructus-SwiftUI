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
    @State private var currentIndex: Int = 0
    
    // MARK: - Body
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $currentIndex) {
                ForEach(0..<4) { itemIndex in
                    FruitCardView(fruit: fruits[itemIndex], currentIndex: $currentIndex)
                        .tag(itemIndex)
                }
            } // TabView
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
            .padding(.vertical, 20)
            
            HStack(spacing: 55) {
                PreviousButtonView(currentIndex: $currentIndex)
                Spacer()
                NextButtonView(currentIndex: $currentIndex)
            } // HStack
            .padding(.bottom, 25)
            .padding(.horizontal, 35)
        } // ZStack
    }
}

// MARK: - Preview
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
