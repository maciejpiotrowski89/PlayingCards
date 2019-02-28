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

}
