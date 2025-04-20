//
//  MainView.swift
//  Greetings App
//
//  Created by Omar Assidi on 18/04/2025.
//

import SwiftUI
struct MainView: View {
    @Binding var language: String
    @Binding var direction: String
    var body: some View {
        
            ContentView()
                .toolbar {
                    ToolbarItem(placement: .navigation) {
                        LanguageOptionsView(language: $language, direction: $direction)
                    }
                }
        
    }
}

#Preview {
    MainView(language: .constant("en"), direction: .constant("ltr"))
}
