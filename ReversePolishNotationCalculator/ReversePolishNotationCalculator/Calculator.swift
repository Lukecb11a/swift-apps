//
//  Calculator.swift
//  ReversePolishNotationCalculator
//
//  Created by Compton-Burnett, Luke (PGW) on 11/06/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import Foundation

class Calculator {
    func add(stack: inout [Int]){
        let no1: Int = stack.removeLast()
        let no2: Int = stack.removeLast()
        stack.append(no1 + no2)
    }
    
    func minus(stack: inout [Int]){
        let no1: Int = stack.removeLast()
        let no2: Int = stack.removeLast()
        stack.append(no2 - no1)
    }
    
    func times(stack: inout [Int]){
        let no1: Int = stack.removeLast()
        let no2: Int = stack.removeLast()
        stack.append(no1 * no2)
    }
    
    func divide(stack: inout [Int]) -> String{
        let no1: Int = stack.removeLast()
        let no2: Int = stack.removeLast()
        if no1 == 0 {
            return "ERROR cannot divide by 0"
        }
        stack.append(no2 / no1)
        return ""
    }
    
    func calculate(stack: [String]) -> String {
        var newStack: [Int] = []
        for i in 0..<stack.count {
            let operand = stack[i].trimmingCharacters(in: .whitespaces)
            if operand == "+" {
                add(stack: &newStack)
            } else if operand == "-" {
                minus(stack: &newStack)
            } else if operand == "*" {
                times(stack: &newStack)
            } else if operand == "/" {
                let possibleError = divide(stack: &newStack)
                if possibleError != "" {
                    return possibleError
                }
            } else {
                newStack.append(Int(operand) ?? 0)
            }
        }
        return String(newStack[0])
    }
}
