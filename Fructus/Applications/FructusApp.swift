//
//  FructusApp.swift
//  Fructus
//
//  Created by Ramy Sabry on 24/09/2021.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage(Constants.isDarkMode) var isDarkMode: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if let isOnboarding: Bool = UserDefault.shared.boolean(forKey: Constants.isOnboarding), isOnboarding == true {
                OnBoardingView()
                    .preferredColorScheme(isDarkMode ? .dark : .light)
            } else {
                FruitsListView()
                    .preferredColorScheme(isDarkMode ? .dark : .light)
            }
        }
    }
}
