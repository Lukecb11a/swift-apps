//
//  Unknown Algorithms.swift
//  Unknown Algorithms
//
//  Created by Compton-Burnett, Luke (PGW) on 30/11/2019.
//  Copyright © 2019 Luke Compton-Burnett. All rights reserved.
//

import Foundation

class UnknownAlgorithms {
    
    func firstAndLastSum (data: [Int]) -> Int {
        if data.count == 0{
            return 0
        }
        else if data.count == 1 {
            return data[0] * 2
        } else {
            return data[0] + data[data.count - 1]
        }
        
    }
    
    func modeOfUnsortedData (data: [Int]) -> Int {
        var currentHighCount = 0
        var currentHighNum = Int()
        for i in data {
            var counter = 0
            for j in data {
                if i == j {
                    counter += 1
                }
            }
            if counter > currentHighCount {
                currentHighCount = counter
                currentHighNum = i
            }
        }
        return currentHighNum
    }
    
    func findSecondLowestNumber (data: [Int]) -> Int {
        var data = data
        var lowestNumber = data[0]
        for i in data {
            if i < lowestNumber {
                lowestNumber = i
            }
        }
        if let index = data.index(of: lowestNumber) {
            data.remove(at: index)
        }
        
        var secondLowestNumber = data[0]
        for i in data {
            if i < secondLowestNumber {
                secondLowestNumber = i
            }
        }
        return secondLowestNumber
    }
    
    func modeOfSortedData (data: [Int]) -> Int {
        var counter = 0
        var currentHighCount = 0
        var currentHighNum = 0
        for i in 1..<data.count-1 {
            if data[i] == data[i - 1] {
                counter += 1
                if counter > currentHighCount {
                    currentHighCount = counter
                    currentHighNum = data[i]
                }
            }
        }
        return currentHighNum
    }
    
    func domainNameFinder (data: String) {
        //not possible i don't think to get it to work for all algorithms
    }
    
}
