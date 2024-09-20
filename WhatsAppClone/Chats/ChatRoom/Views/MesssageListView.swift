//
//  MesssageListView.swift
//  WhatsAppClone
//
//  Created by Bilal Mehdi on 20/09/2024.
//

import SwiftUI

struct MesssageListView: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = MessgageListController
    
    func makeUIViewController(context: Context) -> MessgageListController {
        let messageListController = MessgageListController()
        return messageListController
    }
    
    func updateUIViewController(_ uiViewController: MessgageListController, context: Context) { }
}

#Preview {
    MesssageListView()
}
