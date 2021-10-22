//
//  ContentView.swift
//  MemorizeByMe2
//
//  Created by Leoncio Castillo on 4/14/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var modelView = CardmodelView()
    var body: some View {
//        HStack() {
//            LazyVGrid(columns: [GridItem(.adaptive(minimum: 70))]) {
        AdaptiveGrid(items: modelView.allCards, aspectRatio: 2/3, content: { cardVie in
            ShowCards(cardModel: cardVie).onTapGesture {
                modelView.pick(selectedCard: cardVie)
            }.padding(3)
            
        })
 
//            }
//        }
        .padding()
        .foregroundColor(.blue)
    }
}


struct ShowCards: View {
    var cardModel: CardGame<String>.Card
    var body: some View {
            if cardModel.cardFaceUp{
                ZStack{
                    RoundedRectangle(cornerRadius: 10).fill(Color.white)
                        RoundedRectangle(cornerRadius: 10).strokeBorder()
                        Text(cardModel.cardContent)
                    }
            }else {
                RoundedRectangle(cornerRadius: 10)
            }
         }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
