//
//  VerticalTitleView.swift
//  Greetings App
//
//  Created by Omar Assidi on 18/04/2025.
//

import SwiftUI

struct VerticalTitleView: View {
    @State private var subTitle: LocalizedStringKey = "Explore SwiftUI Development"
    var body: some View {
        VStack(alignment: .leading) {
            GreetingsTextView(subTitle: $subTitle)
            RingView()
            Spacer()
        }.padding()
    }
}

#Preview {
    VerticalTitleView()
}
