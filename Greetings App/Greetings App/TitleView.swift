//
//  TitleView.swift
//  Greetings App
//
//  Created by Omar Assidi on 06/04/2025.
//

import SwiftUI

struct TitleView: View {
    @State private var subTitle: LocalizedStringKey = "Explore SwiftUI Development"
    @Binding var isDarkMode: Bool
    var body: some View {
        HStack {
            GreetingsTextView(subTitle: $subTitle)
            Spacer()
            RingView(isDarkMode: $isDarkMode)
        }
    }
}

#Preview {
    TitleView(isDarkMode: .constant(false))
        .padding()
}
