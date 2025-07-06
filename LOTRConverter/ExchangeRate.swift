//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by Jonathan Grajkowski on 2025-05-29.
//

import SwiftUI

struct ExchangeRate: View {
    let leftImage: ImageResource
    let text: String
    let rightImage: ImageResource
    
    
    var body: some View {
        HStack {
            // Left currency image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            // Exchange rate text
            Text(text)
            
            // Right currency text
            Image(.goldpenny)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRate(leftImage: .silverpiece, text: "1 silver Piece = 4 Silver Pennies", rightImage: .silverpenny)
}
