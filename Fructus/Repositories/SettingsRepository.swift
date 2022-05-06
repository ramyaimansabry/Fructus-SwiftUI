//
//  SettingsRepository.swift
//  Fructus
//
//  Created by Ramy Sabry on 16/10/2021.
//

import SwiftUI

protocol SettingsRepositoryProtocol {
    var isDarkMode: Bool { get set }
    func changeIsOnboardingValue(to newValue: Bool)
    func changeIfAppInDarkMode(to newValue: Bool)
}

class SettingsRepository: SettingsRepositoryProtocol {
    @Published var isDarkMode: Bool
    
    private let storageService: SettingsStorageServiceProtocol
    
    init(storageService: SettingsStorageServiceProtocol = SettingsStorageService()) {
        self.storageService = storageService
        self.isDarkMode = storageService.isDarkMode
    }
    
    func changeIsOnboardingValue(to newValue: Bool) {
        storageService.changeIsOnboardingValue(to: newValue)
    }
    
    func changeIfAppInDarkMode(to newValue: Bool) {
        storageService.changeIfAppInDarkMode(to: newValue)
    }
}
