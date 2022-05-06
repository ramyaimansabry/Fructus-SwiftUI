//
//  SettingsViewModel.swift
//  Fructus
//
//  Created by Ramy Sabry on 16/10/2021.
//

import Foundation
import SwiftUI

final class SettingsViewModel: ObservableObject {
    private let repository: SettingsRepositoryProtocol
    
    @Published var isOnboarding: Bool = false {
        didSet {
            repository.changeIsOnboardingValue(to: isOnboarding)
        }
    }
    
    @Published var isDarkMode: Bool {
        didSet {
            repository.changeIfAppInDarkMode(to: isDarkMode)
        }
    }
    
    init(repository: SettingsRepositoryProtocol = SettingsRepository()) {
        self.repository = repository
        self.isDarkMode = repository.isDarkMode
    }
}
