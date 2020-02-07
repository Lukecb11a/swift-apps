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
        let forename = ["Harry", "Jane", "Kaia", "Luke", "Steve", "Alex", "Garry", "Seb", "Hugo", "David", "Nancy", "Sarah", "Hatty", "Jane", "Mike", "Richard", "Abigail", "Hayden", "Mister"]
        let surname = ["Smith", "Bennet", "Brown", "Dunlop", "Manners", "Kua", "Joel", "Reed", "Jackson", "Grey", "Williams", "Ash", "Birch", "Richardson", "Stevenson", "Grayhams", "Kim", "Vlasto", "Compton-Burnett", "Cormell", "Crawford", "Hales"]
        let division = Division(code: code)
        for _ in 0..<size {
            let newStudent = Student(forename: forename[Int.random(in: 0..<forename.count)], surname: surname[Int.random(in: 0..<surname.count)])
            division.students.append(newStudent)
            
        }
        
        return division
    }
}
