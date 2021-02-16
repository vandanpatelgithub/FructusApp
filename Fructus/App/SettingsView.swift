//
//  SettingsView.swift
//  Fructus
//
//  Created by Vandan Patel on 2/15/21.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    @AppStorage(FructusConstants.isOnboarding) var isOnboarding = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(spacing: 20) {
                    GroupBox(label: SettingsLabelView(labelText: "FRUCTUS", labelImage: "info.circle"), content: {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essentials nutrients, including potassium, dietary fibre, vitamins, and much more.")
                                .font(.footnote)
                                .padding(.vertical, 8)
                                .frame(minHeight: 60)
                                .layoutPriority(1)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                        }
                    })
                    
                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush"), content: {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggling the switch in this box. That way, it starts the onboarding process and you will see the welcome screen again.")
                        
                        Toggle(isOn: $isOnboarding, label: {
                            if isOnboarding {
                                Text("RESTARTED")
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("RESTART")
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        })
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    })
                    
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone"), content: {
                        SettingsRowView(name: "Developer", content: "Vandan Patel")
                        SettingsRowView(name: "LinkedIn Profile", content: nil, linkLabel: "LinkedIn", linkDestination: "https://www.linkedin.com/in/vandanpatel/")
                        SettingsRowView(name: "Github Profile", content: nil, linkLabel: "Github", linkDestination: "https://github.com/vandanpatelgithub")
                        
                    })
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action: {
                                            presentationMode.wrappedValue.dismiss()
                                        }, label: {
                                            Image(systemName: "xmark")
                                        })
                )
                .padding()
            })
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
