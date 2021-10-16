//
//  FruitsApiService.swift
//  Fructus
//
//  Created by Ramy Sabry on 16/10/2021.
//

import Foundation

protocol FruitsApiServiceProtocol {
    func fetchFruits(completion: ([Fruit]) -> Void)
}

class FruitsApiService: FruitsApiServiceProtocol {
    func fetchFruits(completion: ([Fruit]) -> Void) {
        completion(fruitsData)
    }
}
