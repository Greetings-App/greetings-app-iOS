//
//  LandscapeContentView.swift
//  Greetings App
//
//  Created by Omar Assidi on 18/04/2025.
//

import SwiftUI

struct LandscapeContentView: View {
    @Binding var isDarkMode: Bool
    var body: some View {
        ZStack {
            BackgroundView()
            HStack {
                VerticalTitleView(isDarkMode: $isDarkMode)
                Spacer()
                MessagesView()
                Spacer()
            }.padding()
        }
    }
}

#Preview {
    LandscapeContentView(isDarkMode: .constant(false))
}
