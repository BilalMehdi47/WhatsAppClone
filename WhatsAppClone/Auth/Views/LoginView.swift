//
//  LoginView.swift
//  WhatsAppClone
//
//  Created by Bilal Mehdi on 21/09/2024.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                AuthHeaderView()
                
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.teal.gradient)
            .ignoresSafeArea()
        }
    }
}

#Preview {
    LoginView()
}
