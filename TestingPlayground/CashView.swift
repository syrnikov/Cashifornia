//
//  ContentView.swift
//  TestingPlayground
//
//  Created by Артем Сырников on 08.04.2024.
//

import SwiftUI

struct CashView: View {
    @Binding var dollars: Double
    
    var currencyFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencySymbol = "$"
        return formatter
    }()
    
    var body: some View {
        VStack {
            Text("\(currencyFormatter.string(for: NSNumber(value: dollars)) ?? "")")
                
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(10)
            
                
            HStack {
                Button("Add", systemImage: "plus.circle.fill") {
                    withAnimation {
                        dollars += 1
                    }
                }

                Button("Withdraw", systemImage: "minus.circle.fill") {
                    withAnimation {
                        dollars -= 1
                    }
                }
                
            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .labelStyle(.iconOnly)
            .foregroundStyle(.foreground)
        }
    }
}
