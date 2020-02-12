//
//  Student.swift
//  CommentCardWriter
//
//  Created by Compton-Burnett, Luke (PGW) on 11/02/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import Foundation

class Student {
    
    let name: String
    var block: String
    var housemaster: String
    var tutor: String
    var subjects: [Subject] = []
    
    init(name: String, block: String, housemaster: String, tutor: String) {
        self.name = name
        self.block = block
        self.housemaster = housemaster
        self.tutor = tutor
    }
    
}
