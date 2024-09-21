//
//  SettingsView.swift
//  WhatsAppClone
//
//  Created by Bilal Mehdi on 19/09/2024.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            List {
                
                SettingsHeaderView()
                Section {
                    
                    SettingItemView(item: .broadCastLists)
                    SettingItemView(item: .starredMessages)
                    SettingItemView(item: .linkedDevices)
                }
                Section {
                    SettingItemView(item: .account)
                    SettingItemView(item: .privacy)
                    SettingItemView(item: .chats)
                    SettingItemView(item: .notifications)
                    SettingItemView(item: .storage)

                }
                Section {
                    SettingItemView(item: .help)
                    SettingItemView(item: .tellFriend)
                }
            }
            .navigationTitle("Settings")
            .searchable(text: $searchText)
        }
    }
}


private struct SettingsHeaderView: View {
    var body: some View {
        Section {
            HStack {
                Circle()
                    .frame(width: UpdateView.Constant.imageDimension,
                           height: UpdateView.Constant.imageDimension)
                
                
                userInfoView()
                
            }
            
            SettingItemView(item: .avatar)
        }
    }
    
    private func userInfoView() -> some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("Username")
                    .font(.title2)
                
                Spacer()
                
                Image(.qrcode)
                    .renderingMode(.template)
                    .padding(5)
                    .foregroundStyle(Color(.blue))
                    .background(Color(.systemGray5))
                    .clipShape(Circle())
            }
            
            Text("Hey there! I am using whatsapp")
                .font(.caption)
                .foregroundStyle(.gray)
                .lineLimit(1)
        }
    }
}
#Preview {
    SettingsView()
}
