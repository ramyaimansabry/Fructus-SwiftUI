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
    
    init(repository: SettingsRepositoryProtocol = SettingsRepository()) {
        self.repository = repository
    }
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    @AppStorage("isDarkMode") var isDarkMode: Bool = false
}
