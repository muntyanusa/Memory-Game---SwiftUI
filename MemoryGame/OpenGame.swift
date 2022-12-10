//
//  OpenGame.swift
//  MemoryGame
//
//  Created by Станислав Мунтяну on 05.12.2022.
//

import SwiftUI

struct OpenGame: View {
    
    @ObservedObject var game: EmojiMemoryGame
    
    var body: some View {
        
        AspectVGrid(items: game.cards, aspectRatio: 2/3, content: { card in
            if card.isMatched && !card.isFaceUp{
                Rectangle().opacity(0)
            } else {
            CardView(card: card)
                .padding(4)
                .onTapGesture {
                    game.choose(card: card)
                }
            }
        })
        .foregroundColor(.black)
        .padding(.horizontal)
    }
}
struct CardView: View {
    let card: EmojiMemoryGame.Card
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                    Pie(startAngle: Angle(degrees: 0-90), endAngle: Angle(degrees: 110-90))
                        .padding(5)
                        .opacity(0.5)
                    Text(card.content)
                        .font(font(in: geometry.size))
                }
            }
        .cardify(isFaceUp: card.isFaceUp)
        }

    private func font(in size: CGSize) -> Font {
        Font.system(size: min(size.width, size.height) * DrawingConstants.fontScale)
    }
    
    private struct DrawingConstants {
        static let cornerRadius: CGFloat = 10
        static let lineWidth: CGFloat = 3
        static let fontScale: CGFloat = 0.65
        static let paddingPie: CGFloat = 5
        static let opacityPie: CGFloat = 0.50

    }
}




struct OpenGame_Previews: PreviewProvider {
    static var previews: some View {
        OpenGame(game: EmojiMemoryGame())
        
    }
}
