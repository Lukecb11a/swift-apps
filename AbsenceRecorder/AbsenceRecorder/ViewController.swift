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
        
        let selectedDivision = divisions[indexPath.row]
        var newAbsence = Absence(date: currentDate)
        if let absenceExists = selectedDivision.getAbsence (for: currentDate) {
            newAbsence = absenceExists
        }
        
        selectedDivision.absences.append(newAbsence)
        
        guard let vc = storyboard?.instantiateViewController(identifier: "DivisionAbsenceViewController", creator: { coder in
            return DivisionAbsenceViewController(coder: coder, division: selectedDivision, absence: newAbsence)
        }) else {
            fatalError("Failed to load division absence view controller")
        }
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let allPresent = UIContextualAction(style: .normal, title: "All Present") { action, view, completionHandler in
            let division = self.divisions[indexPath.row]
            let absence = Absence(date: self.currentDate, present: division.students)
            var found = false
            for i in 0..<division.absences.count {
                if division.absences[i].takenOn == self.currentDate {
                    division.absences[i] = absence
                    found = true
                }
            }
            if found == false {
                division.absences.append(absence)
            }
            tableView.reloadData()
            completionHandler(true)
            
        }
        return UISwipeActionsConfiguration(actions: [allPresent])
    }
    
    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let allAbsent = UIContextualAction(style: .normal, title: "All Absent") { action, view, completionHandler in
            let division = self.divisions[indexPath.row]
            let absence = Absence(date: self.currentDate, present: [])
            var found = false
            for i in 0..<division.absences.count {
                if division.absences[i].takenOn == self.currentDate {
                    division.absences[i] = absence
                    found = true
                }
            }
            if found == false {
                division.absences.append(absence)
            }
            
            tableView.reloadData()
            completionHandler(true)
            
        }
        return UISwipeActionsConfiguration(actions: [allAbsent])
    }
    
    func convertDivisionsToJson() -> String? {
        let encoder = JSONEncoder()
        guard let encoded = try? encoder.encode(divisions) else {
            print("unable to encode divisions into json")
            return nil
        }
        
        guard let json = String(data: encoded, encoding: .utf8) else {
            print("Unable to tur encode divisions")
            return nil
        }
        
        return json
    }
    
    func convertJsonToDivisions(json: Data) -> [Division]? {
        let decoder = JSONDecoder()
        guard let decoded = try? decoder.decode([Division].self, from: json) else {
            return nil
        }
        return decoded
    }
    
    func saveDataToFile() {
        guard let divisionsJson = convertDivisionsToJson() else {
            return
        }
        
        let filePath = UserDocumentManager.getDocumentsDirectory().appendingPathComponent("divisions.txt")
        
        do {
            try divisionsJson.write(to: filePath, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            print("Unable to save by writing to a file")
        }
    }
    
    func loadDataFromFile() {
        let filePath = UserDocumentManager.getDocumentsDirectory().appendingPathComponent("divisions.txt")
        
        do {
            let json = try Data(contentsOf: filePath)
            divisions = convertJsonToDivisions(json: json) ?? []
        } catch {
            print("failed to read from file")
            addDummyData()
        }
    }
    
    func addDummyData() {
        divisions.append(DivisionFactory.createDivision(code: "bY1-1", of: 12))
        divisions.append(DivisionFactory.createDivision(code: "bS3-2", of: 5))
        divisions.append(DivisionFactory.createDivision(code: "hI4-4", of: 13))
    }


}

