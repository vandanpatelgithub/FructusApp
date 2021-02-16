//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Vandan Patel on 2/15/21.
//

import SwiftUI

struct SettingsLabelView: View {
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "FRUCTUS", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
