//
//  SettingItemView.swift
//  WhatsAppClone
//
//  Created by Bilal Mehdi on 19/09/2024.
//

import SwiftUI

struct SettingItemView: View {
    
    let item: SettingsItem
    
    var body: some View {
        HStack {
            
            imageIcon()
                .frame(width: 30, height: 30)
                .foregroundStyle(.white)
                .background(item.backgroundColor)
                .clipShape(RoundedRectangle(cornerRadius: 5))
   
            
            Text(item.title)
                .font(.system(size: 18))
            
            Spacer()
        }
    }
    
    @ViewBuilder
    private func imageIcon() -> some View {
        
        switch item.imageType {
        case .systemImage:
            Image(systemName: item.imageName)
                .bold()
                .font(.callout)
        case .assetImage:
            Image(item.imageName)
                .renderingMode(.template)
                .padding(3)
        }
        

    }
}

#Preview {
    SettingItemView(item: .avatar)
}
