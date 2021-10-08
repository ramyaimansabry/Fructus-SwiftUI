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
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            } else {
                FruitsListView()
            }
        }
    }
}
