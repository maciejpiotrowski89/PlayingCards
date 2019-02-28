import XCTest
@testable import PlayingCards

final class DeckTests: XCTestCase {
    
    var deck: Deck!
    
    override func tearDown() {
        super.tearDown()
        deck = nil
    }
    
    func testDeckCannotBeInitializedWithLessThan52Cards() {
        for n in 0..<Deck.standardCount {
            //Given
            let cards: [Card] = Card.createCards(n)
            
            //When
            deck = Deck(cards: cards)
            
            //Then
            XCTAssertNil(deck, "Cannot create a deck with \(n) cards")
        }
    }
    
    func testCreatingDeckWith52Cards() {
        //Given
        let n = Deck.standardCount
        let cards: [Card] = Card.createCards(n)
        
        //When
        deck = Deck(cards: cards)
        
        //Then
        XCTAssertNotNil(deck)
    }
    
    func testCreatingDeckWith52CardAndDuplicatesIsNotAllowed() {
        //Given
        let n = Deck.standardCount
        var cards: [Card] = Card.createCards(n)
        cards[4] = Card(suit: .clubs, rank: .king)
        cards[10] = Card(suit: .clubs, rank: .king)

        //When
        deck = Deck(cards: cards)
        
        //Then
        XCTAssertNil(deck)
    }
    
    func testCreatesStandardDeck() {
        XCTAssertNotNil(Deck.standardDeck())
    }
    
}
