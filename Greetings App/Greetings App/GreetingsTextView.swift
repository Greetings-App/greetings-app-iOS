//
//  GreetingsTextView.swift
//  Greetings App
//
//  Created by Omar Assidi on 18/04/2025.
//

import SwiftUI
import TipKit

struct GreetingsTextView: View {
    @Binding var subTitle: LocalizedStringKey
    let subTitles: [LocalizedStringKey] = [
        "Explore SwiftUI Development",
        "UIKit is old",
        "SwiftUI is awesome",
        "SwiftUI is cool",
        "SwiftUI is amazing"
    ]
    private let tip = GreetingsTip()
    var body: some View {
        if #available(iOS 17.0, *) {
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
            .popoverTip(tip)
        } else {
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
        }
    }
}

#Preview {
    GreetingsTextView(subTitle: .constant("Explore SwiftUI Development"))
}
