//
//  MemoryGameApp.swift
//  MemoryGame
//
//  Created by Станислав Мунтяну on 05.12.2022.
//

import SwiftUI

@main
struct MemoryGameApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
