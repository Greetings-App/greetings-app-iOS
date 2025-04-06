//
//  MessagesView.swift
//  Greetings App
//
//  Created by Omar Assidi on 06/04/2025.
//

import SwiftUI

struct MessagesView: View {
    let messages: [DataItemModel] = [
        .init(text: "Welcome to SwiftUI Programming", color: .gray),
        .init(text: "Hello there", color: .green),
        .init(text: "Yes I am", color: .yellow),
        .init(text: "Boom.", color: .red),
    ]
    var body: some View {
        ForEach(messages) { message in
            TextView(text: message.text, color: message.color)
        }
    }
}

#Preview {
    MessagesView()
}
