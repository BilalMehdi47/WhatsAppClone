//
//  ChatRoomView.swift
//  WhatsAppClone
//
//  Created by Bilal Mehdi on 19/09/2024.
//

import SwiftUI

struct ChatRoomView: View {
    var body: some View {
        
        MesssageListView()
        
        .toolbar(.hidden, for: .tabBar)
        .toolbar {
            
            leadingNavItem()
            
            trailingNavItem()
        }
        .navigationBarTitleDisplayMode(.inline)
        .safeAreaInset(edge: .bottom) {
            TextInputView()
        }
    }
}

extension ChatRoomView {
    
    @ToolbarContentBuilder
    private func leadingNavItem() -> some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            HStack {
                Circle()
                    .frame(width: 35, height: 35)
                
                Text("Username")
            }
        }
    }
    
    @ToolbarContentBuilder
    private func trailingNavItem() -> some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            HStack{
                Button {
                    
                } label: {
                    Image(systemName: "video")
                }
                Button {
                    
                } label: {
                    Image(systemName: "phone")
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        ChatRoomView()
    }
}
