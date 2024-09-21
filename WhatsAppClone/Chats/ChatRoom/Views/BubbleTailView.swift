//
//  BubbleTailView.swift
//  WhatsAppClone
//
//  Created by Bilal Mehdi on 20/09/2024.
//

import SwiftUI

struct BubbleTailView: View {
    
    var direction: MessageDirection
    
    private var backgroundColor: Color {
        return direction == .received ? .bubbleWhite : .bubbleGreen
        
    }
    var body: some View {
        
        Image(direction == .sent ? .outgoingTail : .incomingTail)
            .renderingMode(.template)
            .resizable()
            .frame(width: 10, height: 10)
            .offset(y: 3)
            .foregroundStyle(backgroundColor)
    }
}

#Preview {
    ScrollView {
        BubbleTailView(direction: .received)
        BubbleTailView(direction: .sent)
    }
    .frame(maxWidth: .infinity)
    .background(Color.black.opacity(0.5))
}
