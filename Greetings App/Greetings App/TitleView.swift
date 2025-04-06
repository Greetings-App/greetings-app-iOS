//
//  TitleView.swift
//  Greetings App
//
//  Created by Omar Assidi on 06/04/2025.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Greetings")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text("Explore SwiftUI Development")
                .font(.headline)
                .fontWeight(.thin)
                
        }
    }
}

#Preview {
    TitleView()
}
