//
//  Subject.swift
//  School Timetable
//
//  Created by Compton-Burnett, Luke (PGW) on 07/06/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import Foundation

class Subject {
    var name: String
    var reoccuring: String
    var zoomLink: [String] = []
    var zoomCode: [String] = []
    var zoomPassword: [String] = []
    var date: [Date] = []
    
    init(name:String, reoccuring: String) {
        self.name = name
        self.reoccuring = reoccuring
    }
    
    func addWeeklyLesson(zoomLink: String, zoomCode: String, zoomPassword: String, date: Date) {
        self.zoomLink.append(zoomLink)
        self.zoomPassword.append(zoomPassword)
        self.zoomCode.append(zoomCode)
        self.date.append(date)
    }
    
    func addOnlyLesson(zoomLink: String, zoomCode: String, zoomPassword: String) {
        self.zoomLink.append(zoomLink)
        self.zoomPassword.append(zoomPassword)
        self.zoomCode.append(zoomCode)
    }
    
    func getZoomCode(date: Date) -> [String]{
        if let arrayPosition = self.date.firstIndex(of: date) {
            let zoomInfo = [zoomLink[arrayPosition], zoomCode[arrayPosition], zoomPassword[arrayPosition]]
            return zoomInfo
        } else {
            return ["ERROR, date not found"]
        }
    }
}
