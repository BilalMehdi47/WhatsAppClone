//
//  UpdateView.swift
//  WhatsAppClone
//
//  Created by Bilal Mehdi on 18/09/2024.
//

import SwiftUI

struct UpdateView: View {
    @State private var searctText = ""
    var body: some View {
        NavigationStack {
            List {
                Section {
                    StatusHeaderView()
                        .listRowBackground(Color.clear)
                } header: {
                    Text("Status")
                        .font(.title3)
                        .bold()
                        .textCase(nil)
                        .foregroundStyle(.whatsAppBlack)
                }
              //  StatusHeaderView()
                
                StatusSectionView()
                
                Section {
                    recentUpdatesView()
                } header: {
                    Text("Recent Updates")
                }
                
                Section {
                    channelView()
                } header: {
                    channelHeader()
                }
                
                
            }
            .listStyle(.grouped)
            .navigationTitle("Updates")
            .searchable(text: $searctText)
        }
    }
    
private func channelHeader() -> some View {
        HStack {
            Text("Channels")
                .font(.title3)
                .bold()
                .textCase(nil)
                .foregroundStyle(.whatsAppBlack)
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "plus")
                    .padding(7)
                    .background(Color(.systemGray5))
                    .clipShape(Circle())
            }
        }
    }
}

extension UpdateView {
    enum Constant {
        static let imageDimension: CGFloat = 60
    }
}

private struct StatusHeaderView: View {
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "circle.dashed")
                .foregroundStyle(.blue)
                .imageScale(.large)
            (
                Text("Use Status to share text, photos, videos that disappear in 24 hours.")
                +
                Text("")
                +
                Text("Status Privacy")
                    .foregroundStyle(.blue)
                    .bold()
            )
            Image(systemName: "xmark")
                .foregroundStyle(.gray)
        }
        .padding()
        .background(.whatsAppWhite)
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
        
    }
}

private struct StatusSectionView: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: UpdateView.Constant.imageDimension,
                       height: UpdateView.Constant.imageDimension)
            
            VStack(alignment: .leading) {
                Text("My Status")
                    .font(.callout)
                    .bold()
                
                Text("Add my status")
                    .foregroundStyle(.gray)
                    .font(.system(size: 15))
                
            }
            Spacer()
            
            cameraButton()
            
            pencilButton()
        }
    }
    
    private func cameraButton() -> some View {
        Button {
            
        } label: {
            Image(systemName: "camera.fill")
                .padding(10)
                .background(Color(.systemGray5))
                .clipShape(Circle())
                .bold()
        }
    }
    
    private func pencilButton() -> some View {
        Button {
            
        } label: {
            Image(systemName: "pencil")
                .padding(10)
                .background(Color(.systemGray5))
                .clipShape(Circle())
                .bold()
        }
    }
}


private struct recentUpdatesView: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: UpdateView.Constant.imageDimension,
                       height: UpdateView.Constant.imageDimension)
            
            VStack(alignment: .leading) {
                Text("Arslan")
                    .font(.callout)
                    .bold()
                
                Text("1h ago")
                    .foregroundStyle(.gray)
                    .font(.system(size: 15))
                
            }
        }
    }
}

private struct channelView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Stay updated on topics that matter to you. Find channels to follow below.")
                .foregroundStyle(.gray)
                .font(.callout)
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<5) { _ in
                        ChannelItemView()

                    }
                }
            }
            
            Button("Explore More") { }
                .tint(.blue)
                .bold()
                .buttonStyle(.borderedProminent)
                .clipShape(Capsule())
                .padding(.vertical)
        }
    }
}

private struct ChannelItemView: View {
    var body: some View {
        VStack {
            
            Circle()
                .frame(width: UpdateView.Constant.imageDimension,
                        height: UpdateView.Constant.imageDimension)
            
            
            Text("Real Madrid C.F")
            Button {
                
            } label: {
                Text("Follow")
                    .padding(5)
                    //.foregroundStyle(.blue)
                    .bold()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical)
        .overlay(
        RoundedRectangle(cornerRadius: 10)
            .stroke(Color(.systemGray4), lineWidth: 1)
        )
    }
}


#Preview {
    UpdateView()
}
