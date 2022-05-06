//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Ramy Sabry on 08/10/2021.
//

import SwiftUI

struct FruitNutrientsView: View {

    var fruit: Fruit
    private let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protien", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack(alignment: .top) {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        } // Group
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    } // HStack
                }
            } // DisclosureGroup
        } // GroupBox
    }
}

#if DEBUG
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
#endif
