//
//  Stack.swift
//  VisualisingDataStructures
//
//  Created by Compton-Burnett, Luke (PGW) on 27/01/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import Foundation

class Stack {
    var top = -1
    var data: [String]
    
    init(data: [String]) {
        self.data = data
    }
    
    func push(item: String) {
        top += 1
        data[top] = item
    }
    
    func pop() {
        if data.count == 0 {
            print("Stack empty")
        } else {
            top -= 1
        }
    }
    
    func output() {
        var finalStack:[String] = []
        if top > -1 {
            for i in 0...top {
                finalStack.append(data[i])
            }
        }
    }
}
