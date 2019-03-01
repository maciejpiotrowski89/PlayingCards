import Foundation

public struct Card {
    public let suit: Suit
    public let rank: Rank
    public var id: UInt {
        return Card.id(for: rank, suit: suit)
    }
    
    public static func createCards(_ numberOfCards: Int) -> [Card] {
        var cards: [Card] = []
        
        while cards.count < numberOfCards {
            let n = numberOfCards - cards.count
            ammend(n, to: &cards)
        }
        return cards
    }
    
    private static func ammend(_ n: Int, to collection: inout [Card]) {
        for suit in Suit.allCases {
            for rank in Rank.allCases {
                guard Card.id(for: rank, suit: suit) <= n else { return }
                collection.append(Card(suit: suit, rank: rank))
            }
        }
    }
    
    private static func id(for rank: Rank, suit: Suit) -> UInt {
        return suit.rawValue * UInt(Rank.allCases.count) + rank.rawValue
    }
}

extension Card: Equatable { }
