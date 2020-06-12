//
//  ReversePolishNotationCalculatorUITests.swift
//  ReversePolishNotationCalculatorUITests
//
//  Created by Compton-Burnett, Luke (PGW) on 10/06/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import XCTest

class ReversePolishNotationCalculatorUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAllNumberButtonsDisabledIf3DigitNumberInputted() {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["button1"].tap()
        app.buttons["button2"].tap()
        app.buttons["button3"].tap()
        
        XCTAssertEqual(app.staticTexts["output"].label, " 123")
        
        XCTAssertEqual(app.buttons["button1"].isEnabled, false)
        XCTAssertEqual(app.buttons["button2"].isEnabled, false)
        XCTAssertEqual(app.buttons["button3"].isEnabled, false)
        XCTAssertEqual(app.buttons["button4"].isEnabled, false)
        XCTAssertEqual(app.buttons["button5"].isEnabled, false)
        XCTAssertEqual(app.buttons["button6"].isEnabled, false)
        XCTAssertEqual(app.buttons["button7"].isEnabled, false)
        XCTAssertEqual(app.buttons["button8"].isEnabled, false)
        XCTAssertEqual(app.buttons["button9"].isEnabled, false)
        XCTAssertEqual(app.buttons["button0"].isEnabled, false)
    }
    
    func testChangeSignButtonWorks() {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["button5"].tap()
        app.buttons["button8"].tap()
        
        XCTAssertEqual(app.staticTexts["output"].label, " 58")
        
        app.buttons["buttonChangeSign"].tap()
        XCTAssertEqual(app.staticTexts["output"].label, " -58")
        
        app.buttons["buttonChangeSign"].tap()
        XCTAssertEqual(app.staticTexts["output"].label, " 58")
    }
    
    func testAllNumberAndSignButtonsWork() {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["button1"].tap()
        app.buttons["button2"].tap()
        app.buttons["button3"].tap()
        
        XCTAssertEqual(app.staticTexts["output"].label, " 123")
        
        app.buttons["buttonClear"].tap()
        XCTAssertEqual(app.staticTexts["output"].label, "")
        
        app.buttons["button4"].tap()
        app.buttons["button5"].tap()
        app.buttons["button6"].tap()
        
        XCTAssertEqual(app.staticTexts["output"].label, " 456")
        
        app.buttons["buttonClear"].tap()
        
        app.buttons["button7"].tap()
        app.buttons["button8"].tap()
        app.buttons["button9"].tap()
        
        XCTAssertEqual(app.staticTexts["output"].label, " 789")
        
        app.buttons["buttonClear"].tap()
        
        app.buttons["button0"].tap()
        
        XCTAssertEqual(app.staticTexts["output"].label, " 0")
        
    }
    
    

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
