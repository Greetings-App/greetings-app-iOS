//
//  LandscapeContentView.swift
//  Greetings App
//
//  Created by Omar Assidi on 18/04/2025.
//

import SwiftUI

struct LandscapeContentView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            HStack {
                VerticalTitleView()
                Spacer()
                MessagesView()
                Spacer()
            }.padding()
        }
    }
}

#Preview {
    LandscapeContentView()
}
