//
//  GreetingsTip.swift
//  Greetings App
//
//  Created by Omar Assidi on 19/04/2025.
//

import SwiftUI
import TipKit

struct GreetingsTip: Tip {
    var id: String {
        "greetings-tip"
    }
    var title: Text {
        Text("Click on text and disc")
    }
    var message: Text? {
        Text("Randomly generate subtitle and play with the disc")
    }
    var asset: Image? {
        Image(systemName: "questionmark.circle.fill")
    }
    
}
