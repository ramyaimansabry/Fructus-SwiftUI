//
//  FruitsViewModel.swift
//  Fructus
//
//  Created by Ramy Sabry on 16/10/2021.
//

import Foundation

final class FruitsViewModel: ObservableObject {
    
    private let repository: FruitsRepositoryProtocol
    
    @Published var fruitsItems: [Fruit] = fruitsData
    @Published var currentIndex: Int = 0
    @Published var isShowingSettingsView: Bool = false
    
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
}
