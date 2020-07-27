import XCTest
@testable import LOHExtension

final class LOHExtensionTests: XCTestCase {
    func testURLComponents_parseQuery() {
        XCTAssertEqual(URLComponents.parseQuery("?a=b"), [
            URLQueryItem(name: "?a", value: "b"),
        ])
        XCTAssertEqual(URLComponents.parseQuery("a=b&c=d"), [
            URLQueryItem(name: "a", value: "b"),
            URLQueryItem(name: "c", value: "d"),
        ])
        XCTAssertEqual(URLComponents.parseQuery("name=Runrioter%20Wung"), [
            URLQueryItem(name: "name", value: "Runrioter Wung"),
        ])
        XCTAssertEqual(URLComponents.parseQuery(nil), nil)
        XCTAssertEqual(URLComponents.parseQuery(""), [])
    }

    static var allTests = [
        ("testURLComponents_parseQuery", testURLComponents_parseQuery),
    ]
}
