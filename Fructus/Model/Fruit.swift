//
//  FruitModel.swift
//  Fructus
//
//  Created by Mabast on 3/22/21.
//

import Foundation
import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
