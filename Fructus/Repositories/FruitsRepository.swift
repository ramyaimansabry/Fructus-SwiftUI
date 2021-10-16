//
//  FruitsRepository.swift
//  Fructus
//
//  Created by Ramy Sabry on 16/10/2021.
//

import Foundation

protocol FruitsRepositoryProtocol {
    func fetchFruits(completion: ([Fruit]) -> Void)
}

final class FruitsRepository: FruitsRepositoryProtocol {
     private let apiService: FruitsApiServiceProtocol
    // private let storageService: FruitStorageServiceProtocol
    
    init(apiService: FruitsApiServiceProtocol = FruitsApiService()) {
        self.apiService = apiService
    }
    
    func fetchFruits(completion: ([Fruit]) -> Void) {
        apiService.fetchFruits(completion: completion)
    }
}
