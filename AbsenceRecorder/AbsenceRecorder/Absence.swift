//
//  Absence.swift
//  AbsenceRecorder
//
//  Created by Compton-Burnett, Luke (PGW) on 07/02/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import Foundation

class Absence {
    var takenOn: Date
    var present: [Student] = []
    var selectedRows: [IndexPath]?
    
    init(date: Date) {
        takenOn = date
    }
}
