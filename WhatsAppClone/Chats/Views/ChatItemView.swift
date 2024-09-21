//
//  ChatItemView.swift
//  WhatsAppClone
//
//  Created by Bilal Mehdi on 19/09/2024.
//

import SwiftUI

struct ChatItemView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            Circle()
                .frame(width: UpdateView.Constant.imageDimension,
                       height: UpdateView.Constant.imageDimension)
            
            VStack(alignment: .leading, spacing: 3) {
                
                titleTextView()
                
                mesagePreview()
                
            }
        }
    }
    
    private func titleTextView() -> some View {
        
        HStack {
            Text("Username here ")
                .lineLimit(1)
                .bold()
            
            Spacer()
            
            Text("5:30 pm")
                .foregroundStyle(.gray)
                .font(.system(size: 15))
        }
    }
    
    private func mesagePreview() -> some View {
        
        Text("Hey welcome to whatsapp, would you like to join our communities and explore more of our ideas.")
            .foregroundStyle(.gray)
            .font(.system(size: 16))
            .lineLimit(2)
        
    }
}

#Preview {
    ChatItemView()
}
