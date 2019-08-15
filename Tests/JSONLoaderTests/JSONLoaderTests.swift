import XCTest
@testable import JSONLoader

final class JSONLoaderTests: XCTestCase {
    struct HelloWorld: Codable, Equatable {
        var hello: String
    }
    
    func testParse() {
        let json = "{ \"hello\": \"world\" }"
        XCTAssertEqual(
            parse(json.data(using: .utf8)!),
            HelloWorld(hello: "world")
        )
    }
    
    func testLoadFromURL() {
        let url = URL(string: "https://pastebin.com/raw/SQJvQS5i")!
        XCTAssertEqual(
            loadFromURL(url),
            HelloWorld(hello: "world")
        )
        
    }
    
    static var allTests = [
        ("testParse", testParse),
        ("testLoadFromURL", testLoadFromURL),
    ]
}
