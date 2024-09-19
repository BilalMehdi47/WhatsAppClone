//
//  CommunityTabView.swift
//  WhatsAppClone
//
//  Created by Bilal Mehdi on 18/09/2024.
//

import SwiftUI

struct CommunityTabView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    
                    Image(.communities)
                    
                    Group {
                        Text("Stay Connected with a commnunity ")
                            .font(.system(size: 20))
                            .bold()
                            .padding(.vertical)
                        Text("Bring people together in topic based discussions using communities.Any community you add will appear here.")
                            .foregroundStyle(.gray)
                    }
                    .padding(.horizontal, 5)
                        
                        Button("See Example Communities>") { }
                        .frame(maxWidth: .infinity, alignment: .center)
                        
                        
                        Button{
                            
                        } label: {
                            Label("New Community", systemImage: "plus")
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .center)
                                .foregroundStyle(.white)
                                .padding(10)
                                .background(.blue)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .padding()
                        }
                }
                .padding()
                .navigationTitle("Communities")
            }
        }
    }
}

#Preview {
    CommunityTabView()
}
