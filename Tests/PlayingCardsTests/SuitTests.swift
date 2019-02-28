//
//  SuitTests.swift
//  PlayingCardsTests
//
//  Created by Maciej Piotrowski on 28/2/19.
//


import XCTest
@testable import PlayingCards

class SuitTests: XCTestCase {
    
    func testSuitRawValueStartsFrom0() {
        XCTAssertEqual(Suit.diamonds.rawValue, 0)
    }
}
