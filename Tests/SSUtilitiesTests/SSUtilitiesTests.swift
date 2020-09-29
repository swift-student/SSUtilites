import XCTest
@testable import SSUtilities

final class SSUtilitiesTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SSUtilities().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
