//
//  PreviousButtonView.swift
//  Fructus
//
//  Created by Ramy Sabry on 09/10/2021.
//

import SwiftUI

struct PreviousButtonView: View {
    // MARK: - Properties
    @Binding var currentIndex: Int
    
    // MARK: - Body
    var body: some View {
        Button {
            currentIndex > 0 ? (currentIndex -= 1) : ()
        } label: {
            HStack(spacing: 8) {
                Image(systemName: "arrow.left")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
        } // Button
        .accentColor(Color.white)
    }
}

// MARK: - Preview
// struct PreviousButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        var currentIndex: Int = 0
//        PreviousButtonView(currentIndex: currentIndex)
//            .preferredColorScheme(.dark)
//            .previewLayout(.sizeThatFits)
//    }
// }
