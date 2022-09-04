//
//  ContentView.swift
//  Dicee (SwiftUI)
//
//  Created by Hleb Tsahoika on 29.08.22.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(diceNumver: leftDiceNumber)
                    DiceView(diceNumver: rightDiceNumber)
                }
                .padding()
                Spacer()
                Button("Roll") {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }
                .font(.system(size: 50))
                .foregroundColor(.white)
                .padding(.horizontal)
                .background(.red)
                Spacer()
            }
        }
    }
}

struct DiceView: View {
    let diceNumver: Int
    var body: some View {
        Image("dice\(diceNumver)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
    }
}


