import XCTest
@testable import RSpellingChecker

final class SpellingCheckerTests: XCTestCase {
    func textCorrectEnglishText() {
        let spellingChecker = SpellingChecker()
        spellingChecker.checkText("hello")
    }

    func textWrongEnglishText() {

    }


    static var allTests = [
        ("testExample", textCorrectEnglishText),
    ]
}
