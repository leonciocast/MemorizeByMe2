//
//  GridView.swift
//  MemorizeByMe2
//
//  Created by Leoncio Castillo on 7/25/21.
//

import SwiftUI

struct GridView<cardIterms, cardViews>: View where cardViews: View, cardIterms: Identifiable {
  
    var cards: [cardIterms]
    var aspectRatio: CGFloat
    var content: (cardIterms) -> cardViews
    
    
    var body: some View {
        let width: CGFloat = 100
        LazyVGrid(columns: [GridItem(.adaptive(minimum: width))]){
            ForEach(cards){ card in
                content(card)
                
            }
        }
    }
}


