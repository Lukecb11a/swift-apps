//
//  DivisionFactory.swift
//  AbsenceRecorder
//
//  Created by Compton-Burnett, Luke (PGW) on 30/01/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import Foundation

class DivisionFactory {
    
    static func createDivision (code: String, of size: Int) -> Division {
        let names = ["Harry", "Jane", "Kaia", "Luke", "Steve", "Alex", "Garry", "Seb", "Hugo", "David", "Nancy", "Sarah", "Hatty", "Jane", "Mike", "Richard", "Abigail", "Hayden", "Mr Cormell"]
        let division = Division(code: code)
        for _ in 0..<size {
            let newStudent = names[Int.random(in: 0..<names.count)]
            division.students.append(newStudent)
        }
        
        return division
    }
}
