//
//  XCUILib.swift
//  XCUILib
//
//  Created by John Haselden on 28/01/2019.
//

import XCTest

extension XCTestCase {
    @available(iOS 9.0, *)
    public func check(cells: XCUIElementQuery?, withTest test: (XCUIElement) -> Swift.Void) {
        if let cells = cells {
            for cell in cells.allElementsBoundByIndex {
                test(cell)
            }
        } else {
            XCTFail("Unable to check cells")
        }
    }

    @available(iOS 9.0, *)
    public func check(staticTexts: XCUIElementQuery?, withTest test: (XCUIElement) -> Swift.Void) {
        if let staticTexts = staticTexts {
            for staticText in staticTexts.allElementsBoundByIndex {
                test(staticText)
            }
        } else {
            XCTFail("Unable to check staticTexts")
        }
    }

    @available(iOS 9.0, *)
    public func pause(for element: XCUIElement,
              timeout: TimeInterval = 5,
              _ completion: @escaping (_ error: Error?) -> Void) {
        let exists = NSPredicate(format: "exists == 1")
        
        expectation(for: exists, evaluatedWith: element, handler: nil)
        waitForExpectations(timeout: timeout) { (error) in
            if let error = error {
                completion(error)
            } else {
                completion(nil) // element is on screenlls
            }
        }
        
    }
    
    @available(iOS 9.0, *)
    func enter(text: String, into element: XCUIElement) {
        element.tap()
        element.typeText(text)
    }
    
}
