//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Ramy Sabry on 09/10/2021.
//

import SwiftUI

struct SettingsLabelView: View {
    
    let labelText: String
    let labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#if DEBUG
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
#endif
