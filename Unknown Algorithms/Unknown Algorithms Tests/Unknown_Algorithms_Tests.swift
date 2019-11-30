//
//  Unknown_Algorithms_Tests.swift
//  Unknown Algorithms Tests
//
//  Created by Compton-Burnett, Luke (PGW) on 30/11/2019.
//  Copyright © 2019 Luke Compton-Burnett. All rights reserved.
//

import XCTest

class Unknown_Algorithms_Tests: XCTestCase {

    func testFirstAndLastSumReturnsCorrectIntegerValueWhenGivenAnArrayOfIntegers () {
        let unknownAlgorithms = UnknownAlgorithms()
        let testCases = [(input: [1, 2, 3, 4, 5, 9], expected: 10),
                         (input: [2, 5, 3, 7, 1, 100, 2566, 36], expected: 38)]
        
        //act
        
        //assert
        for testCase in testCases {
            
            //test case is a touple representing the input test data and our expected output
            let actual = unknownAlgorithms.firstAndLastSum(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testModeOfAnUnsortedIntegerArrayWithArrayOfIntegers () {
        let unknownAlgorithms = UnknownAlgorithms()
        let testCases = [(input: [1, 2, 3, 2, 3, 3], expected: 3),
                         (input: [2, 2, 3, 7, 1, 2566, 2566, 36], expected: 2)]
        
        //act
        
        //assert
        for testCase in testCases {
            
            //test case is a touple representing the input test data and our expected output
            let actual = unknownAlgorithms.modeOfUnsortedData(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
        
    }
    
    func testSecondLowestNumberIsFoundWhenArrayOfIntegersIsPassedIn () {
        let unknownAlgorithms = UnknownAlgorithms()
        let testCases = [(input: [1, 2, 3, 2, 3, 3], expected: 2),
                         (input: [1, 2, 3, 7, 1, 2566, 2566, 36], expected: 1)]
        
        //act
        
        //assert
        for testCase in testCases {
            
            //test case is a touple representing the input test data and our expected output
            let actual = unknownAlgorithms.findSecondLowestNumber(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
        
    }
    
    func testModeOfAnSortedIntegerArrayWithArrayOfIntegers () {
    let unknownAlgorithms = UnknownAlgorithms()
    let testCases = [(input: [1, 2, 3, 3, 3, 4], expected: 3),
                     (input: [1, 2, 2, 7, 7, 2566, 2566, 2566], expected: 2566)]
    
    //act
    
    //assert
    for testCase in testCases {
        
        //test case is a touple representing the input test data and our expected output
        let actual = unknownAlgorithms.modeOfUnsortedData(data: testCase.input)
        XCTAssertEqual(actual, testCase.expected)
        }
    
    }
    
    func testDomainNameReturnWithStringURL () {
        let unknownAlgorithms = UnknownAlgorithms()
        let testCases = [(input: "www.google.com", expected: "google"),
                         (input: "www.google.org.uk", expected: "google"),
                         (input: "something.random.at.google.it", expected: "google")]
        
        //act
        
        //assert
        for testCase in testCases {
            
            //test case is a touple representing the input test data and our expected output
            let actual = unknownAlgorithms.domainNameFinder(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }

}
