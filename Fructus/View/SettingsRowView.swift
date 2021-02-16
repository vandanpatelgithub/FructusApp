//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Vandan Patel on 2/16/21.
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
                    .foregroundColor(.gray)
                Spacer()
                if let content = content {
                    Text(content)
                } else if let linkLabel = linkLabel, let linkDestination = URL(string: linkDestination ?? "") {
                    Link(linkLabel, destination: linkDestination)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Vandan Patel")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(name: "LinkedIn", content: nil, linkLabel: "LinkedIn", linkDestination: "www.linkedin.com/in/vandanpatel")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
