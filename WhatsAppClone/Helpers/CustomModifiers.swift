//
//  CustomModifiers.swift
//  WhatsAppClone
//
//  Created by Bilal Mehdi on 20/09/2024.
//


 import SwiftUI

private struct BubbleTailModifiers: ViewModifier {
    
    var direction: MessageDirection
    
    func body(content: Content) -> some View {
        content.overlay(alignment: direction == .received ? .bottomLeading : .bottomTrailing) {
            BubbleTailView(direction: direction)
        }
    }
}

extension View {
    
    func applyTail(_ direction:MessageDirection) -> some View {
        self.modifier(BubbleTailModifiers(direction: direction))
    }
}
