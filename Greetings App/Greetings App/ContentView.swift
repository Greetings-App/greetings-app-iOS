//
//  ContentView.swift
//  Greetings App
//
//  Created by Omar Assidi on 06/04/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            VStack(alignment: .leading) {
                TitleView()
                Spacer()
                MessagesView()
                Spacer()
                Spacer()
            }.padding()
        }
    }
}

#Preview {
    ContentView()
}
