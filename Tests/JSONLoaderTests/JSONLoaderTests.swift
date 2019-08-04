import XCTest
@testable import JSONLoader

final class JSONLoaderTests: XCTestCase {
    struct Person: Codable {
       var id:Int
       var name:String
    }
    
    func testLoadingJSON() {
     
    }

    static var allTests = [
        ("testLoadingJSON", testLoadingJSON),
    ]
}
