//
//  NextButtonView.swift
//  Fructus
//
//  Created by Ramy Sabry on 09/10/2021.
//

import SwiftUI

struct NextButtonView: View {
    // MARK: - Properties
    @Binding var currentIndex: Int
    
    // MARK: - Body
    var body: some View {
        Button {
            currentIndex < 3 ? (currentIndex += 1) : ()
        } label: {
            HStack(spacing: 8) {
                Image(systemName: "arrow.right")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
        }
        .accentColor(Color.white)
    }
}

// MARK: - Preview
struct NextButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NextButtonView(currentIndex: .constant(3))
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
