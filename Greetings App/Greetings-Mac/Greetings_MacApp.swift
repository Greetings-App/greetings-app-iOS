//
//  Greetings_MacApp.swift
//  Greetings-Mac
//
//  Created by Omar Assidi on 19/04/2025.
//

import SwiftUI
import TipKit

@main
struct Greetings_MacApp: App {
    @AppStorage("language") var language: String = LanguageConstants.ENGLISH
    @AppStorage("direction") var direction: String =  LanguageConstants.LEFT_TO_RIGHT
    
    private var layoutDirection: LayoutDirection {
        direction == LanguageConstants.RIGHT_TO_LEFT ? .rightToLeft : .leftToRight
    }
    var body: some Scene {
        WindowGroup {
            if #available(iOS 17.0, *) {
                MainView(language: $language, direction: $direction)
                    .environment(\.locale, Locale(identifier: language))
                    .environment(\.layoutDirection, layoutDirection)
                    .task {
                        try? Tips.resetDatastore()
                        try? Tips.configure ([
                            .displayFrequency (.immediate),
                            .datastoreLocation(.applicationDefault)
                        ])
                    }
            } else {
                MainView(language: $language, direction: $direction)
                    .environment(\.locale, Locale(identifier: language))
                    .environment(\.layoutDirection, layoutDirection)
            }
        }
    }
}
