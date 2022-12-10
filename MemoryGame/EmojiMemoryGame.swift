//
//  EmojiMemoryGame.swift
//  MemoryGame
//"🐶", "🈹", "🅱️", "🤺",
//  Created by Станислав Мунтяну on 05.12.2022.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    
    typealias Card = MemoryGame<String>.Card
    
    @Published private var model = createMemoryGame()
    
    static let emojis = ["🐶", "🈹", "🅱️", "🤺", "🎱", "🏈", "⚾️","🥊", "🏓", "🎱", "🏐", "🎣", "🐶", "🈹", "🅱️", "🤺", "🎱", "🏈", "⚾️","🥊", "🏓", "🎱", "🏐", "🎣"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 15) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    
    
    
    var cards: Array<Card>{
        model.cards
    }
    
    
    
    // MARK: -  Intent(s)
    
    func choose(card: Card){
        model.choose(card)
    }
    
}
