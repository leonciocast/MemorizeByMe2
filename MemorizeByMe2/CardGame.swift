//
//  CardGame.swift
//  MemorizeByMe2
//
//  Created by Leoncio Castillo on 10/21/21.
//

import SwiftUI

struct CardGame<GenericContent> {
    
    
    var allCards: Array<Card>
    
    init(quantityOfPairs: Int, makeCardContent: (Int) -> GenericContent) {
        allCards = []
        for cardIndex in 0..<quantityOfPairs {
            let madeCardContent = makeCardContent(cardIndex)
                      
            allCards.append(Card(id: cardIndex*2, cardContent: madeCardContent))
            allCards.append(Card(id: cardIndex*2+1, cardContent: madeCardContent))
            
        }
    }
    
   mutating func pick(selectedCard: Card) {
    
      //  let cardSelectId = cardIndex(card: selectedCard)
      print("The card picked was: \(selectedCard)")
            
    //        if allCards[cardIndex(card: selectedCard)!].id == selectedCard.id {
    //            allCards[selectedCard.id].cardFaceUp.toggle()
    //        }
            
        if (allCards.cardIndex(compare: selectedCard) != nil){
                allCards[selectedCard.id].cardFaceUp = !allCards[selectedCard.id].cardFaceUp
            }
    }
    
    
    struct Card: Identifiable {
        var id: Int
        var cardContent: GenericContent
        var cardFaceUp: Bool = false
        var cardMatched: Bool = false
    }
}


