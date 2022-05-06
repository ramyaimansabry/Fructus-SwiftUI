//
//  FruitsRepository.swift
//  Fructus
//
//  Created by Ramy Sabry on 16/10/2021.
//

import Foundation

protocol FruitsRepositoryProtocol {
    func fetchFruits(completion: ([Fruit]) -> Void)
    func changeIsOnboardingValue(to newValue: Bool)
}

final class FruitsRepository: FruitsRepositoryProtocol {
     private let apiService: FruitsApiServiceProtocol
     private let storageService: SettingsStorageServiceProtocol
    
    init(
        apiService: FruitsApiServiceProtocol = FruitsApiService(),
        storageService: SettingsStorageServiceProtocol = SettingsStorageService()
    ) {
        self.apiService = apiService
        self.storageService = storageService
    }
    
    func fetchFruits(completion: ([Fruit]) -> Void) {
        apiService.fetchFruits(completion: completion)
    }
    
    func changeIsOnboardingValue(to newValue: Bool) {
        UserDefault.shared.save(newValue, forKey: Constants.isOnboarding)
    }
}
