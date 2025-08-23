//
//  VerticalTitleView.swift
//  Greetings App
//
//  Created by Omar Assidi on 18/04/2025.
//

import SwiftUI

struct VerticalTitleView: View {
    @State private var subTitle: LocalizedStringKey = "Explore SwiftUI Development"
    @Binding var isDarkMode: Bool
    var body: some View {
        VStack(alignment: .leading) {
            GreetingsTextView(subTitle: $subTitle)
            RingView(isDarkMode: $isDarkMode)
            Spacer()
        }.padding()
    }
}

#Preview {
    VerticalTitleView(isDarkMode: .constant(false))
}
