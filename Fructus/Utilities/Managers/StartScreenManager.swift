//
//  StartScreenManager.swift
//  Fructus
//
//  Created by Ramy Sabry on 21/10/2021.
//

import SwiftUI

class StartScreenManager {
    static let shared = StartScreenManager()
    
    @AppStorage(Constants.isDarkMode) private var isDarkMode: Bool = false
    
    private init() { }
    
    @ViewBuilder func startView() -> some View {
        if let isOnboarding: Bool = UserDefault.shared.standard.value(forKey: Constants.isOnboarding) as? Bool, isOnboarding == true {
            OnBoardingView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
        } else {
            FruitsListView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
