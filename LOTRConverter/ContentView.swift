//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Jonathan Grajkowski on 2025-03-21.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    
    var body: some View {
        ZStack {
            //Background image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                //Prancing pony
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .padding().frame(width: 200, height: 200)
                
                //Currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                //Conversion Section
                HStack{
                    // Left conversion section
                    VStack {
                        // Currency
                        HStack {
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 33, height: 33)
                            
                                //Currency Text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        .padding (.bottom, -5)
                        
//                        textfield
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                        
                    }
                    //Equal Sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .symbolEffect(.pulse)
                    
                    //Right conversion section
                    VStack {
                        // Currency
                        HStack {
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        .padding (.bottom, -5)

                        //Textfield
                        TextField("Amount", text:$rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button {
                        showExchangeInfo.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                }
            }
//            .border(.blue)
        }
        .sheet(isPresented: $showExchangeInfo) {
            ExchangeInfo()
        }
    }
}

#Preview {
    ContentView()
}
