//
//  SettingsView.swift
//  Fructus
//
//  Created by Ramy Sabry on 09/10/2021.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // Section 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    } // GroupBox
                    
                    // Section 2
                    GroupBox(
                        label: SettingsLabelView(labelText: "Reset", labelImage: "gear")
                    ) {
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                              Text("Restarted".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(Color.green)
                            } else {
                              Text("Restart".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(Color.secondary)
                            }
                        } // Toggle
                        .padding()
                        .background(
                          Color(UIColor.tertiarySystemBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    } // GroupBox
                    
                    // Section 3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Theme", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        Text("You can select from two themes, dark or light.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 30)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isDarkMode) {
                            if isDarkMode {
                              Text("Dark Mode".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(Color.green)
                            } else {
                              Text("Dark Mode".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(Color.secondary)
                            }
                        } // Toggle
                        .padding()
                        .background(
                          Color(UIColor.tertiarySystemBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    } // GroupBox
                    
                    // Section 4
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Ramy Sabry")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "Email", content: "ramysabry1996@gmail.com")
                        SettingsRowView(name: "Website", linkLabel: "LinkedIn", linkDestination: "https://www.linkedin.com/in/ramy-aiman-sabry-153770117/")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.0.0")
                    } // GroupBox
                } // VStack
                .navigationTitle(Text("Settings"))
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                }
                .padding()
            } // ScrollView
        } // NavigationView
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}

#if DEBUG
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 12 Pro")
    }
}
#endif
