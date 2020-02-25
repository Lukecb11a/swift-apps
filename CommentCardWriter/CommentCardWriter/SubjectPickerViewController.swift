//
//  SubjectPickerViewController.swift
//  CommentCardWriter
//
//  Created by Compton-Burnett, Luke (PGW) on 11/02/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import UIKit

class SubjectPickerViewController: UITableViewController {
    let student: Student
    let possibleSubjects:[String] = ["English", "Maths", "Chemistry", "Physics", "Biology"]
    
    
    init?(coder: NSCoder, student: Student) {
        self.student = student
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("YOU MUST CREATE WITH STUDENT!!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return possibleSubjects.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Subject", for: indexPath)
        
        cell.textLabel?.text = possibleSubjects[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let newSubject = Subject(name: possibleSubjects[indexPath.row])
        student.subjects.append(newSubject)
    }


   

    

}
