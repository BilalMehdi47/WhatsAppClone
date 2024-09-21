//
//  ChatView.swift
//  WhatsAppClone
//
//  Created by Bilal Mehdi on 19/09/2024.
//

import SwiftUI

struct ChatView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            List {
                archivedButton()
                
                ForEach(0..<9) { _ in
                    NavigationLink {
                        ChatRoomView()
                    } label: {
                        ChatItemView()
                    }
                }
                
                footerView()
                    .listRowSeparator(.hidden)
            }
            .navigationTitle("Chats")
            .searchable(text: $searchText)
            .listStyle(.plain)
            .toolbar {
                leadingNavItems()
                trailingNavItems()
            }
        }
    }
}

extension ChatView {
    
    @ToolbarContentBuilder
    private func leadingNavItems() -> some ToolbarContent {
        
        ToolbarItem(placement: .topBarLeading) {
            Menu {
                Button {
                    
                } label: {
                    Label("Select Chats", systemImage: "checkmark.circle")
                }
                
            } label: {
                Image(systemName: "ellipsis.circle")
            }
        }
    }
    
    @ToolbarContentBuilder
    private func trailingNavItems() -> some ToolbarContent {
        
        ToolbarItemGroup(placement: .topBarTrailing) {
            
            Button { }
        label: {
            Image(.circle)
        }
            
            Button { }
        label: {
            Image(systemName: "camera")
        }
            
            Button { }
        label: {
            Image(.plus)
        }
            
        }
    }
    
    private func archivedButton() -> some View {
        Button { }
    label: {
        Label("Archived", systemImage: "archivebox.fill")
            .bold()
            .foregroundStyle(.gray)
         //   .padding()
       }
    }
    
    private func footerView() -> some View {
        HStack {
            Image(systemName: "lock.fill")
             
                .foregroundStyle(.gray)
            
            Text("Your personal messages are")
           
                .foregroundStyle(.gray)
            
            +
            
            Text(" end-to-end encrypted")
             
                .foregroundStyle(.blue)
        }
        .font(.caption)
        .padding(.horizontal)
    }
}

#Preview {
    ChatView()
}
