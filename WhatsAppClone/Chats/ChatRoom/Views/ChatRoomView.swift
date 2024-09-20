//
//  ChatRoomView.swift
//  WhatsAppClone
//
//  Created by Bilal Mehdi on 19/09/2024.
//

import SwiftUI

struct ChatRoomView: View {
    var body: some View {
//        ScrollView {
//            LazyVStack {
//                ForEach(0 ..< 12) { _ in
//                    Text("placeholder")
//                        .font(.largeTitle)
//                        .bold()
//                        .frame(maxWidth: .infinity)
//                        .frame(height: 200)
//                        .background(Color.gray.opacity(0.1))
//                }
//            }
//        }
        
        MesssageListView()
        
        .toolbar(.hidden, for: .tabBar)
        .toolbar {
            
            leadingNavItem()
            
            trailingNavItem()
        }
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
