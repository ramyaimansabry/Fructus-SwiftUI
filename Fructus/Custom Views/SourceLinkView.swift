//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Ramy Sabry on 08/10/2021.
//

import SwiftUI

struct SourceLinkView: View {

    var body: some View {
        GroupBox {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "http://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            } // HStack
            .font(.footnote)
        } // GroupBox
    }
}

#if DEBUG
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
#endif
