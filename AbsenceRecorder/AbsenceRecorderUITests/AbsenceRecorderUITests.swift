//
//  AbsenceRecorderUITests.swift
//  AbsenceRecorderUITests
//
//  Created by Compton-Burnett, Luke (PGW) on 30/01/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import XCTest

class AbsenceRecorderUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testWhenRecordingAnAbsenceStudentsRemainSelected() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let tablesQuery = XCUIApplication().tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["bY1-1"]/*[[".cells.staticTexts[\"bY1-1\"]",".staticTexts[\"bY1-1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Grey"]/*[[".cells.staticTexts[\"Grey\"]",".staticTexts[\"Grey\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        let joelStaticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Joel"]/*[[".cells.staticTexts[\"Joel\"]",".staticTexts[\"Joel\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        joelStaticText.tap()
        joelStaticText.tap()
        tablesQuery.children(matching: .cell).element(boundBy: 2).staticTexts["Stevenson"].tap()
        joelStaticText.tap()
        
        
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let divisionCell = tablesQuery.cells.element(boundBy: 0)
        let divisionCellNoAbsence = tablesQuery.cells.element(boundBy: 1)
        XCTAssertEqual(divisionCell.isSelected, true)
        XCTAssertEqual(divisionCellNoAbsence.isSelected, false)
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
