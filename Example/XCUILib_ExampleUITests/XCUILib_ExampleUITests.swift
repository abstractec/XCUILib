//
//  XCUILib_ExampleUITests.swift
//  XCUILib_ExampleUITests
//
//  Created by John Haselden on 28/01/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import XCTest
import XCUILib

class XCUILib_ExampleUITests: XCTestCase {
    var app: XCUIApplication?

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app = XCUIApplication()
        
        app?.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        check(cells: app?.cells) { (cell) in
            if cell.staticTexts["Cell 0"].exists {
                // we have a check
                print ("Got me a zero")
            }
        }

    }

}
