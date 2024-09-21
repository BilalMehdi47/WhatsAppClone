//
//  MessageItem.swift
//  WhatsAppClone
//
//  Created by Bilal Mehdi on 20/09/2024.
//

import SwiftUI

struct MessageItem: Identifiable {

    let id = UUID().uuidString
    let text: String
    let direction: MessageDirection
    let type: MessageType
    
    static let sentPlaceholder = MessageItem(text: "holy  molly", direction: .sent, type: .text)
    static let receivedPlaceholder = MessageItem(text: "I just bought a car", direction: .received, type: .text)
    
    
    var alignment: Alignment {
        return direction == .received ? .leading : .trailing
    }
    
    var horizontalAlignment: HorizontalAlignment {
        return direction == .received ? .leading : .trailing
    }
    
    var backgroundColor: Color {
        return direction == .sent ? .bubbleGreen : .bubbleWhite
    }
    
    static let stubMessages: [MessageItem] = [
        MessageItem(text: "Hey there", direction: .sent, type: .text),
        MessageItem(text: "Check this photo", direction: .received, type: .photo),
        MessageItem(text: "Play the video", direction: .sent, type: .video),
        MessageItem(text: "Listhen to this audio", direction: .sent, type: .audio)
    ]
    
}

enum MessageDirection {
    
    case sent, received
    
    static var random: MessageDirection{
        return [MessageDirection.sent, .received].randomElement() ?? .sent
    }
}

enum MessageType {
 
    case text, photo, video, audio
}
