//
//  AuthHeaderView.swift
//  WhatsAppClone
//
//  Created by Bilal Mehdi on 21/09/2024.
//

import SwiftUI

struct AuthHeaderView: View {
    var body: some View {
      HStack {
          Image(.whatsapp)
              .resizable()
              .frame(width: 45, height: 45)
          
          Text("WhatsApp")
              .font(.largeTitle)
              .foregroundStyle(.white)
              .fontWeight(.semibold)
        }
    }
}

#Preview {
    AuthHeaderView()
}
