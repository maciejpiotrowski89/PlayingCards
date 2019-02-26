import XCTest
@testable import PlayingCards

final class PlayingCardsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(PlayingCards().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
