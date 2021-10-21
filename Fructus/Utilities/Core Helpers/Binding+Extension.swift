//
//  Binding+Extention.swift
//  Fructus
//
//  Created by Ramy Sabry on 20/10/2021.
//

import SwiftUI

extension Binding {
    // to observe changes on state variable (like didSet)
    // there is .onChange system function available but only on ios 14
    func onChange(_ handler: @escaping (Value) -> Void) -> Binding<Value> {
        Binding(
            get: { self.wrappedValue },
            set: { newValue in
                self.wrappedValue = newValue
                handler(newValue)
            }
        )
    }
}
