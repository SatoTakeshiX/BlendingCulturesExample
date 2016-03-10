//
//  Model.swift
//  BlendingCulturesExample
//
//  Created by Suguru Kishimoto on 2016/03/02.
//
//

import UIKit

struct Hand : DataType {
    private let deck = Deck()
    private var cards = [Card]()
    
    init() {}
    
    private init (deck: Deck, cards: [Card]) {
        self.cards = cards
    }

    subscript(index: Int) -> Card {
        return cards[index]
    }
    
    var numberOfItems: Int {
        return cards.count
    }
    
    func addNewItemAtIndex(index: Int) -> Hand {
        return insertItem(deck.nextCard(), atIndex: index)
    }

    private func insertItem(card: Card, atIndex index: Int) -> Hand {
        var mutableCards = cards
        mutableCards.insert(card, atIndex: index)
        return Hand(deck: deck, cards: mutableCards)
    }

    func deleteItemAtIndex(index: Int) -> Hand {
        var mutableCards = cards
        mutableCards.removeAtIndex(index)
        return Hand(deck: deck, cards: mutableCards)
    }

    func moveItem(fromIndex: Int, toIndex: Int) -> Hand {
        return deleteItemAtIndex(fromIndex)
               .insertItem(cards[fromIndex], atIndex: toIndex)
    }
}
