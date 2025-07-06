//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Jonathan Grajkowski on 2025-05-29.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            // Parchment background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea(.all)
                .background(.brown)
            VStack {
                // Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                // Currency icons
//                CurrencyIcon(currencyImage: .copperpenny, currneyName: "Copper Penny")
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(Currency.allCases) { currency in
                        CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                            .shadow(color: .black, radius: 10)
                    }
                }
                
                // text
                Text("Select the currency you would ike to convert to:")
                    .fontWeight(.bold)

                // currnecy icons
                
                // Done button
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by:0.2))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
        SelectCurrency()
}
