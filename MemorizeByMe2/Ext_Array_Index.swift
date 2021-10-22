//
//  Ext_Array_Index.swift
//  MemorizeByMe2
//
//  Created by Leoncio Castillo on 10/22/21.
//

import Foundation

extension Array where Element: Identifiable {
    func cardIndex(compare: Element) -> Int? {
        for cardId in 0..<self.count {
            if compare.id == self[cardId].id {
                return cardId
            }
        }
        return nil
    }
}
