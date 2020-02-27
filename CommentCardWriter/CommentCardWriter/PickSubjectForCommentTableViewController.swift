//
//  WriteCommentCardViewControllerTableViewController.swift
//  CommentCardWriter
//
//  Created by Compton-Burnett, Luke (PGW) on 27/02/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import UIKit

class PickSubjectForCommentTableViewController: UITableViewController {

    let student: Student
    
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
        return student.subjects.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Subject", for: indexPath)
        
        cell.textLabel?.text = student.subjects[indexPath.row].name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print()
    }

    

}
