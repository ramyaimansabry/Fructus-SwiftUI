//
//  FruitStorageService.swift
//  Fructus
//
//  Created by Ramy Sabry on 16/10/2021.
//

import SwiftUI

protocol SettingsStorageServiceProtocol {
    var isDarkMode: Bool { get set }
    func changeIsOnboardingValue(to newValue: Bool)
    func changeIfAppInDarkMode(to newValue: Bool)
}

class SettingsStorageService: SettingsStorageServiceProtocol {
    @AppStorage(Constants.isDarkMode) var isDarkMode: Bool = false
    
    func changeIsOnboardingValue(to newValue: Bool) {
        UserDefault.shared.save(newValue, forKey: Constants.isOnboarding)
    }
    
    func changeIfAppInDarkMode(to newValue: Bool) {
        UserDefault.shared.save(newValue, forKey: Constants.isDarkMode)
    }
}
