//
//  SettingsRepository.swift
//  Fructus
//
//  Created by Ramy Sabry on 16/10/2021.
//

import Foundation

protocol SettingsRepositoryProtocol {
    
}

class SettingsRepository: SettingsRepositoryProtocol {
    private let storageService: SettingsStorageServiceProtocol
    
    init(storageService: SettingsStorageServiceProtocol = SettingsStorageService()) {
        self.storageService = storageService
    }
}
