//
//  CallTabView.swift
//  WhatsAppClone
//
//  Created by Bilal Mehdi on 18/09/2024.
//

import SwiftUI

struct CallTabView: View {
    @State private var searchText = ""
    @State private var callHistory = CallHistory.all
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    CallLinkHeaderView()
                }
                
                Section {
                    ForEach(0..<15) { _ in
                        RecentCallHistoryView()
                    }
                } header: {
                    Text("Recent")
                        .bold()
                        .font(.headline)
                        .textCase(nil)
                        .foregroundStyle(.whatsAppBlack)
                    
                }
                
            }
            .navigationTitle("Calls")
            .searchable(text: $searchText)
            .toolbar {
                leadingNavItem()
                trailingNavItem()
                pricipalNavItem()
            }
        }
    }
}


extension CallTabView {
    
    @ToolbarContentBuilder
    private func trailingNavItem() -> some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button {
                
            } label: {
                Image(systemName: "phone.arrow.up.right")
            }
        }
    }
    
    @ToolbarContentBuilder
    private func leadingNavItem() -> some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Button("Edit") { }
        }
    }
    
    @ToolbarContentBuilder
    private func pricipalNavItem() -> some ToolbarContent {
        ToolbarItem(placement: .principal) {
            Picker("", selection: $callHistory) {
                ForEach(CallHistory.allCases) { item in
                    Text(item.rawValue.capitalized)
                        .tag(item)
                }
            }
            .pickerStyle(.segmented)
            .frame(width: 150)
        }
    }
    
    private enum CallHistory: String, Identifiable, CaseIterable {
        case all, missed
        
        var id: String {
            return rawValue
        }
    }
    
}


private struct CallLinkHeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "link")
                .padding(8)
                .background(Color(.systemGray6))
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.blue)
            
            VStack(alignment: .leading) {
                
                Text("Create Call Link")
                    .foregroundStyle(.blue)
                
                Text("Share a link for your whatsapp call.")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
        }
    }
}



private struct RecentCallHistoryView: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: UpdateView.Constant.imageDimension,
                       height: UpdateView.Constant.imageDimension)
            
            
            recentCallView()
            
            Spacer()
            
            Text("Yesterday")
                .foregroundStyle(.gray)
                .font(.system(size: 16))
            
            Image(systemName: "info.circle")
            
          
        }
    }
    
    private func recentCallView() -> some View {
        VStack(alignment: .leading) {
            Text("Arslan")
                .font(.system(size: 20))
            
            HStack(spacing: 5) {
                Image(systemName: "phone.arrow.up.right.fill")
                    
                Text("Outgoing")
                    
            }
            .font(.system(size: 14))
            .foregroundStyle(.gray)
        }
    }
    
}


#Preview {
    CallTabView()
}
