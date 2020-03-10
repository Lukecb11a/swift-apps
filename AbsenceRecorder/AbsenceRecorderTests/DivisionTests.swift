//
//  DivisionTests.swift
//  AbsenceRecorderTests
//
//  Created by Compton-Burnett, Luke (PGW) on 09/03/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import XCTest

class DivisionTests: XCTestCase {

    func testGetAbsenceWithCurrentDateRetrievesExistingAbsenceOnSameDay() {
        //arrange
        let division = Division(code: "Test")
        let absence = Absence(date: Date())
        division.absences.append(absence)
        let dateLaterToday = Date(timeIntervalSinceNow: 100)
        
        //act
        let actual = division.getAbsence(for: Date())
        
        //assert
        XCTAssertNotNil(actual)
    }

}
