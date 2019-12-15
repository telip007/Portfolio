import XCTest
@testable import Portfolio

final class PortfolioTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Portfolio().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
