//
//  CardTests.swift
//  PlayingCardsTests
//
//  Created by Maciej Piotrowski on 28/2/19.
//

import XCTest
@testable import PlayingCards

class CardTests: XCTestCase {

    func testCreatingCardsWithNoElements() {
        //Given
        let n = 0
        
        //When
        let cards: [Card] = Card.createCards(n)
        
        //Then
        XCTAssertEqual(cards.count, n)
    }
    
    func testCreatingCards() {
        for i in 1...Deck.standardCount {
            //Given
            let n = i
            
            //When
            let cards: [Card] = Card.createCards(n)
            
            //Then
            XCTAssertEqual(cards.count, n, "Creating cards failure for n = \(n)")
        }
    }
    
    func testCreatingMoreCardsThanInTheDeck() {
        for i in Deck.standardCount...(2 * Deck.standardCount + 1) {
            //Given
            let n = i
            
            //When
            let cards: [Card] = Card.createCards(n)
            
            //Then
            XCTAssertEqual(cards.count, n, "Creating cards failure for n = \(n)")
        }
    }
    
    func testCardsAreEqual() {
        //Given
        let card1 = Card(suit: .diamonds, rank: .king)
        let card2 = Card(suit: .diamonds, rank: .king)
        
        //When
        let equal = card1 == card2
        
        //Then
        XCTAssertTrue(equal)
    }

    func testCardsAreNotEqual() {
        //Given
        let card1 = Card(suit: .diamonds, rank: .king)
        let card2 = Card(suit: .clubs, rank: .king)
        
        //When
        let equal = card1 == card2
        
        //Then
        XCTAssertFalse(equal)
    }

    
}
