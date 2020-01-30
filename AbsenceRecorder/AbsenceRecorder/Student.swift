//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Compton-Burnett, Luke (PGW) on 30/01/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import Foundation

class Student {
    let forename: String
    let surname: String
    let birthday: Date
    
    init (forename: String, surname: String, birthday: Date) {
        self.forename = forename
        self.surname = surname
        self.birthday = birthday
    }
    
}
