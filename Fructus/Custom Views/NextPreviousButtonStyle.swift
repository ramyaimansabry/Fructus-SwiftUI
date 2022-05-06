//
//  NextPreviousButtonStyle.swift
//  Fructus
//
//  Created by Ramy Sabry on 16/10/2021.
//

import Foundation
import SwiftUI

struct NextPreviousButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .foregroundColor(Color.white)
    }
}
