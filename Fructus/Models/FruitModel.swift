//
//  FruitModel.swift
//  Fructus
//
//  Created by Ramy Sabry on 01/10/2021.
//

import SwiftUI

// MARK: - Fruits Data Model
struct Fruit: Identifiable {
    let id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
