//
//  FructusApp.swift
//  Fructus
//
//  Created by Ramy Sabry on 24/09/2021.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    @AppStorage("isDarkMode") var isDarkMode: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
                    .preferredColorScheme(isDarkMode ? .dark : .light)
            } else {
                FruitsListView()
                    .preferredColorScheme(isDarkMode ? .dark : .light)
            }
        }
    }
}
