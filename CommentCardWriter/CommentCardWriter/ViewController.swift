//
//  ViewController.swift
//  CommentCardWriter
//
//  Created by Compton-Burnett, Luke (PGW) on 11/02/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var studentNameInput: UITextField!
    @IBOutlet var studentHousemasterInput: UITextField!
    @IBOutlet var studentTutorInput: UITextField!
    @IBOutlet var studentBlockInput: UITextField!
    @IBOutlet var nextButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nextButton.isEnabled = false
    }
    
    func checkTextBoxes() {
        if (studentTutorInput.text != "") && (studentHousemasterInput.text != "") && (studentBlockInput.text != "") && (studentNameInput.text != "") {
            nextButton.isEnabled = true
        } else {
            nextButton.isEnabled = false
        }
    }
    
    @IBAction func nameInputBox(_ sender: Any) {
        checkTextBoxes()
    }
    @IBAction func housemasterInputBox(_ sender: Any) {
        checkTextBoxes()
    }
    @IBAction func tutorInputBox(_ sender: Any) {
        checkTextBoxes()
    }
    @IBAction func blockInputBox(_ sender: Any) {
        checkTextBoxes()
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        let student = Student(name: studentNameInput.text!, block: studentBlockInput.text!, housemaster: studentHousemasterInput.text!, tutor: studentTutorInput.text!)
        
        guard let vc = storyboard?.instantiateViewController(identifier: "SubjectPickerViewController", creator: { coder in
            return SubjectPickerViewController(coder: coder, student: student)
        }) else {
            fatalError("Failed to load division absence view controller")
        }
        
        navigationController?.pushViewController(vc, animated: true)

    }
    
    


}

