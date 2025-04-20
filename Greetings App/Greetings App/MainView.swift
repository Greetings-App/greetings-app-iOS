//
//  MainView.swift
//  Greetings App
//
//  Created by Omar Assidi on 18/04/2025.
//

import SwiftUI
// Portrait = Compact Width, Regular Height
// iPad = Regular Width, Regular Height
struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    private var isPortrait: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    private var isIpad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    @Binding var language: String
    @Binding var direction: String
    var body: some View {
        if isPortrait || isIpad {
            NavigationView {
                ContentView()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            LanguageOptionsView(language: $language, direction: $direction)
                        }
                    }
            }
        } else {
            LandscapeContentView()
        }
    }
}

#Preview {
    MainView(language: .constant("en"), direction: .constant("ltr"))
}
