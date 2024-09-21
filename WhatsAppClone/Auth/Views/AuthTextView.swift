//
//  AuthTextView.swift
//  WhatsAppClone
//
//  Created by Bilal Mehdi on 21/09/2024.
//

import SwiftUI

struct AuthTextView: View {
    
    @Binding var text : String
    var body: some View {
        HStack {
            Image(systemName: "envelope")
                .fontWeight(.semibold)
                .frame(width: 30)
            
            TextField("Emaiol", text: $text)
        }
        .foregroundStyle(.white)
        .padding()
        .background(Color.white.opacity(0.3))
    }
}

#Preview {
    ZStack {
        Color.teal
        AuthTextView(text: .constant(""))
    }
}
