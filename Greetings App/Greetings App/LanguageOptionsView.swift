//
//  LanguageOptionsView.swift
//  Greetings App
//
//  Created by Omar Assidi on 19/04/2025.
//

import SwiftUI

struct LanguageOptionsView: View {
    private func changeLanguage(language: String, direction: String) {
        self.language = language
        self.direction = direction
    }
    @Binding var language: String
    @Binding var direction: String
    var body: some View {
        Menu(content: {
            Button("English") {
                changeLanguage(language: LanguageConstants.ENGLISH, direction: LanguageConstants.LEFT_TO_RIGHT)
            }
            Button("Arabic") {
                changeLanguage(language: LanguageConstants.ARABIC, direction: LanguageConstants.RIGHT_TO_LEFT)
            }
            Button("Spanish") {
                changeLanguage(language: LanguageConstants.SPANISH, direction: LanguageConstants.LEFT_TO_RIGHT)
            }
        }, label: {
            Image(systemName: "gearshape.fill")
                .foregroundColor(Color("menu"))
        })
        
    }
}

#Preview {
    LanguageOptionsView(language: .constant("en"), direction: .constant("ltr"))
}
