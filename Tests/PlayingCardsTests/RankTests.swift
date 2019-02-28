//
//  RankTests.swift
//  PlayingCardsTests
//
//  Created by Maciej Piotrowski on 28/2/19.
//

import XCTest
@testable import PlayingCards

class RankTests: XCTestCase {

    func testRankRawValueStartsFrom1() {
        XCTAssertEqual(Rank.ace.rawValue, 1)
    }
}
