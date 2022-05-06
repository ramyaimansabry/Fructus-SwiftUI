//
//  OnBoardingViewModel.swift
//  Fructus
//
//  Created by Ramy Sabry on 21/10/2021.
//

import Foundation

final class OnBoardingViewModel: ObservableObject {
    
    private let repository: FruitsRepositoryProtocol
    
    @Published var fruitsItems: [Fruit] = fruitsData
    @Published var currentIndex: Int = 0 {
        didSet {
            currentIndex < 3 ? (isOnLastBoard = false) : (isOnLastBoard = true)
        }
    }
    @Published var isOnLastBoard: Bool = false
    @Published var presentFruitsListView: Bool = false
    
    init(repository: FruitsRepositoryProtocol = FruitsRepository()) {
        self.repository = repository
    }
    
    func onAppear() {
        repository.fetchFruits { fruits in
            self.fruitsItems = fruits
        }
    }
    
    func onNextBoardButtonPress() {
        currentIndex < fruitsItems.count ? (currentIndex += 1) : ()
    }
    
    func onPreviousBoardButtonPress() {
        currentIndex > 0 ? (currentIndex -= 1) : ()
    }
    
    func onEndOnboarding() {
        repository.changeIsOnboardingValue(to: false)
        presentFruitsListView = true
    }
}
