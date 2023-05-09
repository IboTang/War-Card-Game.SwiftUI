//
//  ContentView.swift
//  War-Card.SwiftUI
//
//  Created by Ibo Tang on 09.05.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack{
            
            Image("background-wood-grain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text(String(playerScore))
                            .font(.headline)
                            .padding(.bottom,10)
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text(String(cpuScore))
                            .font(.headline)
                            .padding(.bottom,10)
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                    }
                .foregroundColor(.white)
                Spacer()
                }
            }
        }
    
    func deal() {
       
        //Randomize the player's card
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        //Randomize the cpu's card
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        //Update the score
        if playerCardValue > cpuCardValue {
            playerScore += 1
        }else if cpuCardValue > playerCardValue {
            cpuScore += 1
        }else {
            return
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
