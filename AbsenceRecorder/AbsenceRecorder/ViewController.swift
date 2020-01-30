//
//  ViewController.swift
//  AbsenceRecorder
//
//  Created by Compton-Burnett, Luke (PGW) on 30/01/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var divisions: [Division] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addDummyData()
        //iterate over every div and print out student names
        for i in divisions {
            print(i.code)
            for j in i.students {
                print(j)
            }
            print()
        }
    }
    
    func addDummyData() {
        divisions.append(DivisionFactory.createDivision(code: "bY1-1", of: 12))
        divisions.append(DivisionFactory.createDivision(code: "bS3-2", of: 5))
        divisions.append(DivisionFactory.createDivision(code: "hI4-4", of: 13))
    }


}

