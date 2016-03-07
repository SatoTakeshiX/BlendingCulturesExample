//
//  Model.swift
//  BlendingCulturesExample
//
//  Created by Suguru Kishimoto on 2016/03/02.
//
//

import UIKit

class Hand {
    private let deck = Deck()
    private var cards = [Card]()
    
    var numberOfCards: Int {
        return cards.count
    }
    
    func cardAtPosition(index: Int) -> Card {
        return cards[index]
    }
    
    func addNewCardAtIndex(index: Int) {
        insertCard(deck.nextCard(), atIndex: index)
    }

    private func insertCard(card: Card, atIndex index: Int) {
        cards.insert(card, atIndex: index)
    }

    func deleteCardAtIndex(index: Int) {
        cards.removeAtIndex(index)
    }

    func moveCard(fromIndex: Int, toIndex: Int) {
        let cardToMove = cards[fromIndex]
        deleteCardAtIndex(fromIndex)
        insertCard(cardToMove, atIndex: toIndex)
    }
}