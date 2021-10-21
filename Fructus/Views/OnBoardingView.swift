//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Ramy Sabry on 01/10/2021.
//

import SwiftUI

struct OnBoardingView: View {
    
    @StateObject private var viewModel = OnBoardingViewModel()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $viewModel.currentIndex) {
                ForEach(0..<4) { itemIndex in
                    FruitCardView(fruit: viewModel.fruitsItems[itemIndex])
                        .tag(itemIndex)
                }
            } // TabView
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
            .padding(.vertical, 20)
            
            HStack(spacing: 55) {
                Button {
                    viewModel.onPreviousBoardButtonPress()
                } label: {
                    Image(systemName: "arrow.left")
                        .imageScale(.large)
                } // Previous Button
                .buttonStyle(NextPreviousButtonStyle())
                
                Spacer()
                
                if viewModel.isOnLastBoard {
                    Button {
                        viewModel.onEndOnboarding()
                        
                    } label: {
                        Text("Start")
                    } // Start Button
                    .fullScreenCover(isPresented: $viewModel.presentFruitsListView, content: {
                        FruitsListView()
                    })
                    .buttonStyle(NextPreviousButtonStyle())
                    .animation(.easeIn(duration: 0.4))
                } else {
                    Button {
                        viewModel.onNextBoardButtonPress()
                    } label: {
                        Image(systemName: "arrow.right")
                            .imageScale(.large)
                    } // Next Button
                    .buttonStyle(NextPreviousButtonStyle())
                }
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
