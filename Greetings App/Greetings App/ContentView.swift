//
//  ContentView.swift
//  Greetings App
//
//  Created by Omar Assidi on 06/04/2025.
//

import SwiftUI

struct ContentView: View {
    @Binding var isDarkMode: Bool
    var body: some View {
        ZStack {
            BackgroundView()
            VStack(alignment: .leading) {
                TitleView(isDarkMode: $isDarkMode)
                Spacer()
                MessagesView()
                Spacer()
                Spacer()
            }.padding()
        }
    }
}

#Preview {
    ContentView(isDarkMode: .constant(false))
}
