import XCTest
@testable import HelloWorld

class HelloWorldTests: XCTestCase {

    func testLabelDisplaysHelloWorld() {
        // Create an instance of the view controller
        let viewController = ViewController()
        
        // Load the view hierarchy
        viewController.loadViewIfNeeded()
        
        // Find the label in the view hierarchy
        let label = viewController.view.subviews.first { $0 is UILabel } as? UILabel
        
        // Assert that the label's text is "Hello, World!"
        XCTAssertEqual(label?.text, "Hello, World!")
    }
}
