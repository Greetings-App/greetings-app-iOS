//
//  DataItemModel.swift
//  Greetings App
//
//  Created by Omar Assidi on 06/04/2025.
//

import Foundation
import SwiftUICore

struct DataItemModel: Identifiable {
    let id = UUID()
    let text: LocalizedStringKey
    let color: Color
}
