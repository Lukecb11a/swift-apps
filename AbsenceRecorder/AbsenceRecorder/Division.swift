//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Compton-Burnett, Luke (PGW) on 30/01/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import Foundation

class Division {
    let code: String
    var students: [Student] = []
    var absences: [Absence] = []
    
    init (code: String) {
        self.code = code
    }
    
    
    
    func getAbsence (for date: Date) -> Absence? {
        
        return absences.first {
            $0.takenOn == date
        }
    }
}
