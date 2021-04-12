//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Mabast on 3/27/21.
//

import SwiftUI

struct FruitNutrientsView: View {
    var fruit: Fruit
    var nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]

    var body: some View {
        GroupBox {
            DisclosureGroup("\(Image(systemName: "info.circle")) Nutritional value per 100g") {
                ForEach(0 ..< nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Text(nutrients[item])
                            .foregroundColor(fruit.gradientColors[1])
                            .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
