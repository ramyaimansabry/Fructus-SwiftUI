//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Ramy Sabry on 09/10/2021.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name: String
    var content: String?
    var linkLabel: String?
    var linkDestination: String?
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name)
                    .foregroundColor(Color.gray)
                Spacer()
                if content != nil {
                  Text(content!)
                } else if linkLabel != nil && linkDestination != nil {
                  Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                  Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                  EmptyView()
                }
            }
        }
    }
}

#if DEBUG
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
          SettingsRowView(name: "Developer", content: "Ramy Sabry")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
          SettingsRowView(
            name: "Website",
            linkLabel: "LinkedIn Account",
            linkDestination: "https://www.linkedin.com/in/ramy-aiman-sabry-153770117/"
          )
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        }
    }
}
#endif
