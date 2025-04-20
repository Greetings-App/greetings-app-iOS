//
//  RingView.swift
//  Greetings App
//
//  Created by Omar Assidi on 18/04/2025.
//

import SwiftUI

struct RingView: View {
    let lineWidth = 15.0
    let diameter = 70.0
    @State var isRotated = false
    var angle: Angle {
        isRotated ? .zero : .degrees(360)
    }
    var gradient: AngularGradient {
        AngularGradient.init(gradient: Gradient(colors: [.pink, .purple, .blue, .orange, .yellow]), center: .center, angle: angle)
    }
    var body: some View {
        Circle()
            .strokeBorder(gradient, lineWidth: lineWidth)
            .rotationEffect(angle)
            .frame(width: diameter, height: diameter)
            .onTapGesture {
                withAnimation {
                    isRotated.toggle()
                }
            }
    }
}

#Preview {
    RingView()
}
