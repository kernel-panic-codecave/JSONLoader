import XCTest
@testable import JSONLoader

final class JSONLoaderTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(JSONLoader().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
