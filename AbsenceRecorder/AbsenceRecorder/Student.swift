//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Compton-Burnett, Luke (PGW) on 30/01/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import Foundation

class Student: Equatable, Codable {
    let forename: String
    let surname: String
    //let birthday: Date
    
    init (forename: String, surname: String) {
        self.forename = forename
        self.surname = surname
    }
    
    static func == (lhs: Student, rhs: Student) -> Bool {
        return (lhs.forename == rhs.forename) && (lhs.surname == rhs.surname) 
    }
    
}
