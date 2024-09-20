//
//  TextInputView.swift
//  WhatsAppClone
//
//  Created by Bilal Mehdi on 19/09/2024.
//

import SwiftUI

struct TextInputView: View {
    @State private var text = ""
    
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 5) {
            
            imagePickerButton()
            voiceRecorderButton()
            messageTextField()
            sendMessageButton()
            
        }
        .padding(.bottom)
        .padding(.horizontal, 8)
        .padding(.top, 10)
        .background(.whatsAppWhite)
    }
    
    private func imagePickerButton() -> some View {
        Button{
            
        } label: {
            
            Image(systemName: "photo.on.rectangle")
                .imageScale(.large)
                .padding(3)
            
        }

    }
    
    private func voiceRecorderButton() -> some View {
        Button{
            
        } label: {
            
            Image(systemName: "mic.fill")
                .fontWeight(.heavy)
                .foregroundStyle(.white)
                .imageScale(.small)
                .padding(6)
                .background(.blue)
                .clipShape(Circle())
                .padding(.horizontal, 3)
            
        }
    }
    
    private func messageTextField() -> some View {
        TextField("", text: $text, axis: .vertical)
            .padding(5)
            .background(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(.thinMaterial)
            )
            .overlay(textViewBackround())
    }
    
    private func textViewBackround() -> some View {
        RoundedRectangle(cornerRadius: 20, style: .continuous)
            .stroke(Color(.systemGray5), lineWidth: 1)
    }
    
    private func sendMessageButton() -> some View {
        Button{
            
        } label: {
            
            Image(systemName: "location.fill")
                .fontWeight(.heavy)
                .foregroundStyle(.white)
                .imageScale(.small)
                .padding(6)
                .background(Color.blue)
                .clipShape(Circle())
            
        }
    }
}

#Preview {
    TextInputView()
}
