//
//  EmojiMemoryGame.swift
//  memoryGame
//
//  Created by Paulo Belucci on 17/06/21.
//

import SwiftUI

class EmojiMemoryGame {

    static let emojis : Array<String> = ["๐ค", "๐", "๐งก", "โ", "๐", "๐", "๐ฅญ", "๐ฅฌ", "๐ฑ", "๐", "๐ฏ", "๐", "๐ฎ", "๐งฉ", "๐ณ", "๐ธ"]
    
    static func createMemoryGame () -> MemoryGame<String> {
        MemoryGame<String>.init(numberOfPairsOfCard: 4) { pairIndex in EmojiMemoryGame.emojis[pairIndex] }
    }
    
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
}
