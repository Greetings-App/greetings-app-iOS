//
//  TitleView.swift
//  Greetings App
//
//  Created by Omar Assidi on 06/04/2025.
//

import SwiftUI

struct TitleView: View {
    let lineWidth = 15.0
    let diameter = 70.0
    @State var isRotated = false
    var angle: Angle {
        isRotated ? .zero : .degrees(360)
    }
    let subTitles = [
        "Explore SwiftUI Development",
        "UIKit is old",
        "SwiftUI is awesome",
        "SwiftUI is cool",
        "SwiftUI is amazing"
    ]
    @State private var subTitle = "Explore SwiftUI Development"
    var gradient: AngularGradient {
        AngularGradient.init(gradient: Gradient(colors: [.pink, .purple, .blue, .orange, .yellow]), center: .center, angle: angle)
    }
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text(subTitle)
                    .font(.headline)
                    .fontWeight(.thin)
                
            }
            .onTapGesture {
                subTitle = subTitles.randomElement() ?? ""
            }
            Spacer()
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
}

#Preview {
    TitleView()
        .padding()
}
