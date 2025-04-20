//
//  TextView.swift
//  Greetings App
//
//  Created by Omar Assidi on 06/04/2025.
//

import SwiftUI

struct TextView: View {
    let text: LocalizedStringKey
    @State var color: Color
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    let colors: [Color] = [
        .red,
        .green,
        .blue,
        .orange,
        .yellow,
        .purple,
        Color(red: 0.5, green: 0, blue: 0.5),
        Color(red: 0, green: 0.5, blue: 0.5),
        Color(red: 139/255, green: 207/255, blue: 240/255),
        Color (red: 1, green: 215/255, blue: 0)
    ]
    private var isIpad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    private var font: Font {
        isIpad ? .largeTitle : .body
    }
    var body: some View {
        Text(text)
            .font(font)
            .fontWeight(.semibold)
            .foregroundColor(Color.white)
            .padding()
            .background(color.opacity(0.4))
            .cornerRadius(20.0)
            .shadow(color: color, radius: 5.0, x: 10, y: 10)
            .onTapGesture {
                withAnimation {
                    color = colors.randomElement() ?? color
                }
            }
    }
}

#Preview {
    VStack {
        TextView(text: "Hello World", color: .yellow)
        TextView(text: "Hummus", color: .blue)
        TextView(text: "Peace", color: .red)
    }
}
