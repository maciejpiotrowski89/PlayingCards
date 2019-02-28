import Foundation

public struct Deck {
    public static let standardCount = Rank.allCases.count * Suit.allCases.count
    public let cards: [Card]
    init?(cards: [Card]) {
        guard cards.count == Deck.standardCount else { return nil }
        guard Set<UInt>(cards.map { $0.id }).count == Deck.standardCount else { return nil }
        self.cards = cards
    }
    
    public static func standardDeck() -> Deck {
        let cards = Card.createCards(Deck.standardCount)
        return Deck(cards: cards)!
    }
}
