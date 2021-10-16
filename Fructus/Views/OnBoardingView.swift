//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Ramy Sabry on 01/10/2021.
//

import SwiftUI

struct OnBoardingView: View {

    @StateObject private var viewModel = FruitsViewModel()
        
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $viewModel.currentIndex) {
                ForEach(0..<min(viewModel.fruitsItems.count, 4)) { itemIndex in
                    FruitCardView(fruit: viewModel.fruitsItems[itemIndex], currentIndex: $viewModel.currentIndex)
                        .tag(itemIndex)
                }
            } // TabView
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
            .padding(.vertical, 20)
            
            HStack(spacing: 55) {
                PreviousButtonView(currentIndex: $viewModel.currentIndex)
                Spacer()
                NextButtonView(currentIndex: $viewModel.currentIndex)
            } // HStack
            .padding(.bottom, 25)
            .padding(.horizontal, 35)
            .onAppear {
                viewModel.onAppear()
            }
        } // ZStack
    }
}

#if DEBUG
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
#endif
