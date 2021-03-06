//
//  CardmodelView.swift
//  MemorizeByMe2
//
//  Created by Leoncio Castillo on 10/21/21.
//

import Foundation

class CardmodelView: ObservableObject {
    
    static var faces = ["βπ»","πΉ","π€π»","πΌ","π€","π","π","π","π","π€£","βΊοΈ","π","π","π"]
    
    @Published var CardModel = startCardGame()
    
    static func startCardGame () -> CardGame<String> {
        return CardGame<String>(quantityOfPairs: 4) { cardIndex in
            return faces[cardIndex]
        }

    }
    
    
    var allCards: Array<CardGame<String>.Card> {
        CardModel.allCards
    }
    
    func pick(selectedCard: CardGame<String>.Card){
        CardModel.pick(selectedCard: selectedCard)
    }


}
