//
//  ViewController.swift
//  AbsenceRecorder
//
//  Created by Compton-Burnett, Luke (PGW) on 30/01/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var divisions: [Division] = []
    var currentDate: Date = Date()

    
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
        
        updateDateDisplay()
    }
    
    @IBAction func previousDay(_ sender: Any) {
        currentDate = Calendar.current.date(byAdding: .day, value: -1, to: currentDate) ?? Date()
        updateDateDisplay()
    }
    
    @IBAction func nextDay(_ sender: Any) {
        currentDate = Calendar.current.date(byAdding: .day, value: 1, to: currentDate) ?? Date()
        updateDateDisplay()
    }
    
    fileprivate func updateDateDisplay() {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        
        navigationItem.title = formatter.string(from: currentDate)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return divisions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Division", for: indexPath)
        
        cell.textLabel?.text = divisions[indexPath.row].code
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let vc = storyboard?.instantiateViewController(identifier: "DivisionAbsenceViewController") as? DivisionAbsenceViewController else {
            fatalError("Failed to load division absence view controller")
        }
        
        vc.division = divisions[indexPath.row]
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func addDummyData() {
        divisions.append(DivisionFactory.createDivision(code: "bY1-1", of: 12))
        divisions.append(DivisionFactory.createDivision(code: "bS3-2", of: 5))
        divisions.append(DivisionFactory.createDivision(code: "hI4-4", of: 13))
    }


}

