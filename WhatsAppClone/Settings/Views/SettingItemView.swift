//
//  SettingItemView.swift
//  WhatsAppClone
//
//  Created by Bilal Mehdi on 19/09/2024.
//

import SwiftUI

struct SettingItemView: View {
    var body: some View {
        HStack {
            Image(systemName: "info.bubble.fill")
                .padding(3)
                .foregroundStyle(.white)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            
            Text("Change Profile Photo")
                .font(.system(size: 18))
            
            Spacer
        }
    }
}

#Preview {
    SettingItemView()
}
