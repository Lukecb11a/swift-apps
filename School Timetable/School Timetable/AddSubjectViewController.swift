//
//  ViewController.swift
//  School Timetable
//
//  Created by Compton-Burnett, Luke (PGW) on 06/06/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import UIKit

class AddSubjectViewController: UIViewController {
    
    @IBOutlet var subjectName: UITextField!
    @IBOutlet var monday: UITextField!
    @IBOutlet var tuesday: UITextField!
    @IBOutlet var wednesday: UITextField!
    @IBOutlet var thursday: UITextField!
    @IBOutlet var friday: UITextField!
    @IBOutlet var everyDay: UITextField!
    @IBOutlet var backButton: UIBarButtonItem!
    @IBOutlet var saveButton: UIBarButtonItem!
    @IBOutlet var linkQuantity: UISegmentedControl!
    
    @IBOutlet var mondayText: UILabel!
    @IBOutlet var tuesdayText: UILabel!
    @IBOutlet var wednesdayText: UILabel!
    @IBOutlet var thursdayText: UILabel!
    @IBOutlet var fridayText: UILabel!
    @IBOutlet var everyDayText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        monday.isEnabled = false
        tuesday.isEnabled = false
        wednesday.isEnabled = false
        thursday.isEnabled = false
        friday.isEnabled = false
        
        mondayText.isEnabled = false
        tuesdayText.isEnabled = false
        wednesdayText.isEnabled = false
        thursdayText.isEnabled = false
        fridayText.isEnabled = false
    }
    
    @IBAction func toOneLinkPerLesson(_ sender: Any) {
        if monday.isEnabled == true {
            monday.isEnabled = false
            tuesday.isEnabled = false
            wednesday.isEnabled = false
            thursday.isEnabled = false
            friday.isEnabled = false
            
            mondayText.isEnabled = false
            tuesdayText.isEnabled = false
            wednesdayText.isEnabled = false
            thursdayText.isEnabled = false
            fridayText.isEnabled = false
            
            everyDay.isEnabled = true
            everyDayText.isEnabled = true
        } else {
            monday.isEnabled = true
            tuesday.isEnabled = true
            wednesday.isEnabled = true
            thursday.isEnabled = true
            friday.isEnabled = true
            
            mondayText.isEnabled = true
            tuesdayText.isEnabled = true
            wednesdayText.isEnabled = true
            thursdayText.isEnabled = true
            fridayText.isEnabled = true
            
            everyDay.isEnabled = false
            everyDayText.isEnabled = false
        }
        
        monday.text = ""
        tuesday.text = ""
        wednesday.text = ""
        thursday.text = ""
        friday.text = ""
        everyDay.text = ""
    }
    
    
    


}

