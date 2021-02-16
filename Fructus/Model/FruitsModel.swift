//
//  FruitsModel.swift
//  Fructus
//
//  Created by Vandan Patel on 2/14/21.
//

import SwiftUI

struct Fruit: Identifiable {
    let id = UUID()
    let title: String
    let headline: String
    let image: String
    let gradientColors: [Color]
    let description: String
    let nutrition: [String]
}
