//
//  ReversePolishNotationCalculatorTests.swift
//  ReversePolishNotationCalculatorTests
//
//  Created by Compton-Burnett, Luke (PGW) on 10/06/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import XCTest
@testable import ReversePolishNotationCalculator

class ReversePolishNotationCalculatorTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAddFunctionWorks() {
        let calculator = Calculator()
        
        //test1
        var data = [2,5]
        calculator.add(stack: &data)
        XCTAssertEqual(data, [7])
        
        //test2
        data = [9,-27]
        calculator.add(stack: &data)
        XCTAssertEqual(data, [-18])
        
        //test3
        data = [389,115]
        calculator.add(stack: &data)
        XCTAssertEqual(data, [504])
        
    }
    
    func testMinusFunctionWorks() {
        let calculator = Calculator()
        
        //test1
        var data = [2,5]
        calculator.minus(stack: &data)
        XCTAssertEqual(data, [-3])
        
        //test2
        data = [9,-27]
        calculator.minus(stack: &data)
        XCTAssertEqual(data, [36])
        
        //test3
        data = [389,115]
        calculator.minus(stack: &data)
        XCTAssertEqual(data, [274])
        
    }
    
    func testTimesFunctionWorks() {
        let calculator = Calculator()
        
        //test1
        var data = [2,5]
        calculator.times(stack: &data)
        XCTAssertEqual(data, [10])
        
        //test2
        data = [9,-27]
        calculator.times(stack: &data)
        XCTAssertEqual(data, [-243])
        
        //test3
        data = [389,115]
        calculator.times(stack: &data)
        XCTAssertEqual(data, [44735])
        
    }
    
    func testDivideFunctionWorks() {
        let calculator = Calculator()
        
        //test1
        var data = [10,5]
        calculator.divide(stack: &data)
        XCTAssertEqual(data, [2])
        
        //test2
        data = [-243,-27]
        calculator.divide(stack: &data)
        XCTAssertEqual(data, [9])
        
        //test3
        data = [44735,115]
        calculator.divide(stack: &data)
        XCTAssertEqual(data, [389])
        
    }
    
    func testCalculatorFunctionWorks() {
        let calculator = Calculator()
        
        //test1
        var data = ["10", "5", "-", "5", "/"]
        var result = calculator.calculate(stack: data)
        XCTAssertEqual(result, "1")
        
        //test2
        data = ["13", "7", "-", "5", "*", "3","/"]
        result = calculator.calculate(stack: data)
        XCTAssertEqual(result, "10")
        
        //test3
        data = ["10", "5", "+", "5", "/"]
        result = calculator.calculate(stack: data)
        XCTAssertEqual(result, "3")
        
    }
    

}
