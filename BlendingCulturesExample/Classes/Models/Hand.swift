//
//  Model.swift
//  BlendingCulturesExample
//
//  Created by Suguru Kishimoto on 2016/03/02.
//
//

import UIKit

struct Hand {
    private let deck = Deck()
    private var cards = [Card]()
    
    init () {}
    
    private init (deck: Deck, cards: [Card]) {
        self.cards = cards
    }
    
    var numberOfCards: Int {
        return cards.count
    }
    
    func cardAtPosition(index: Int) -> Card {
        return cards[index]
    }
    
    func addNewCardAtIndex(index: Int) -> Hand {
        return insertCard(deck.nextCard(), atIndex: index)
    }

    private func insertCard(card: Card, atIndex index: Int) -> Hand {
        var mutableCards = cards
        mutableCards.insert(card, atIndex: index)
        return Hand(deck: deck, cards: mutableCards)
    }

    func deleteCardAtIndex(index: Int) -> Hand {
        var mutableCards = cards
        mutableCards.removeAtIndex(index)
        return Hand(deck: deck, cards: mutableCards)
    }

    func moveCard(fromIndex: Int, toIndex: Int) -> Hand {
        return deleteCardAtIndex(fromIndex)
               .insertCard(cards[fromIndex], atIndex: toIndex)
    }
}
