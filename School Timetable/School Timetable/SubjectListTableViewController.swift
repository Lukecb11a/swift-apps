//
//  SubjectListTableViewController.swift
//  School Timetable
//
//  Created by Compton-Burnett, Luke (PGW) on 07/06/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import UIKit

class SubjectListTableViewController: UITableViewController {

    @IBOutlet var addSubject: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    @IBAction func addSubjectPress(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(identifier: "AddSubjectViewController", creator: { coder in
            return SubjectViewController()
        }) else {
            fatalError("Failed to load division absence view controller")
        }
        
        navigationController?.pushViewController(vc, animated: true)
    }
    

}
