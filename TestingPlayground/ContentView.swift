//
//  ContentView.swift
//  TestingPlayground
//
//  Created by Артем Сырников on 08.04.2024.
//

import SwiftUI

struct ContentView: View {
    let HeroGradient : [Color] = [
        .gradientTop,
        .gradientBottom
    ]
    @State private var dollars: Double = 10000000
    
    var body: some View {
        VStack (spacing: 0) {
            Text("cashifornia")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 30)
                .foregroundStyle(Gradient(colors: HeroGradient))
            Spacer()
            Text("You have")
                .font(.title2)
            CashView(dollars: $dollars)
                .foregroundStyle(Gradient(colors: HeroGradient))
                .contentTransition(.numericText(value: dollars))
                .padding(.bottom, 10)
            Text("On your bank account")
                .font(.title2)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundBlue)
        .fontDesign(.rounded)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
