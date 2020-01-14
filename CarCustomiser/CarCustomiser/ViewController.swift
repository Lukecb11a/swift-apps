//
//  ViewController.swift
//  CarCustomiser
//
//  Created by Compton-Burnett, Luke (PGW) on 13/01/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var carStats: UILabel!
    
    let car = Car()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        car = Car
    }


}

