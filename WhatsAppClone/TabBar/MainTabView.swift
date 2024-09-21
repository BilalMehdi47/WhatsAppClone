//
//  MainTabView.swift
//  WhatsAppClone
//
//  Created by Bilal Mehdi on 18/09/2024.
//

import SwiftUI

struct MainTabView: View {
    
    init() {
        makeTabBarOpaque()
        let thumbImage = UIImage(systemName: "circle.fill")
        UISlider.appearance().setThumbImage(thumbImage, for: .normal)
    }
    
    var body: some View {
        TabView {
            UpdateView()
                .tabItem {
                    VStack {
                        Image(systemName: "circle.dashed.inset.filled")
                        Text("Updates")
                    }
                }
            
            CallTabView()
                .tabItem {
                    VStack {
                        Image(systemName: "phone")
                        Text("Calls")
                    }
                }
            
            
            CommunityTabView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.3")
                        Text("Communities")
                    }
                }
            
            ChatView()
                .tabItem {
                    VStack {
                        Image(systemName: "message")
                        Text("Chats")
                    }
                }
            
            SettingsView()
                .tabItem {
                    VStack {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
                }
        }
    }
    
    private func makeTabBarOpaque() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
   private func placeholderItemView(_ title: String) -> some View {
        ScrollView {
            VStack {
                ForEach(0 ..< 30) { _ in
                    Text(title)
                        .font(.largeTitle)
                }
            }
        }
    }
}


#Preview {
    MainTabView()
}
