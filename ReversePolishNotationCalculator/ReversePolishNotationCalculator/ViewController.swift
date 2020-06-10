//
//  ViewController.swift
//  ReversePolishNotationCalculator
//
//  Created by Compton-Burnett, Luke (PGW) on 10/06/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var output: UILabel!
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    @IBOutlet var button7: UIButton!
    @IBOutlet var button8: UIButton!
    @IBOutlet var button9: UIButton!
    @IBOutlet var button0: UIButton!
    
    @IBOutlet var buttonEval: UIButton!
    @IBOutlet var buttonClear: UIButton!
    @IBOutlet var buttonEnter: UIButton!
    @IBOutlet var buttonChangeSign: UIButton!
    
    @IBOutlet var buttonPlus: UIButton!
    @IBOutlet var buttonMinus: UIButton!
    @IBOutlet var buttonTimes: UIButton!
    @IBOutlet var buttonDivide: UIButton!
    
    
    var stack: [String] = []
    var tempInput: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.layer.borderColor = UIColor.black.cgColor
        output.layer.borderWidth = 1.5
        
        
    }
    
    @IBAction func press1(_ sender: Any) {
        tempInput += "1"
    }
    
    @IBAction func press2(_ sender: Any) {
        tempInput += "2"
    }
    
    @IBAction func press3(_ sender: Any) {
        tempInput += "3"
    }
    
    @IBAction func press4(_ sender: Any) {
        tempInput += "4"
    }
    
    @IBAction func press5(_ sender: Any) {
        tempInput += "5"
    }
    
    @IBAction func press6(_ sender: Any) {
        tempInput += "6"
    }
    
    @IBAction func press7(_ sender: Any) {
        tempInput += "7"
    }
    
    @IBAction func press8(_ sender: Any) {
        tempInput += "8"
    }
    
    @IBAction func press9(_ sender: Any) {
        tempInput += "9"
    }
    
    @IBAction func press0(_ sender: Any) {
        tempInput += "0"
    }
    
    
    
    @IBAction func pressEval(_ sender: Any) {
    }
    
    @IBAction func pressClear(_ sender: Any) {
    }
    
    @IBAction func pressEnter(_ sender: Any) {
        stack.append(tempInput)
    }
    
    @IBAction func pressChangeSign(_ sender: Any) {
    }
    
    
    
    @IBAction func pressPlus(_ sender: Any) {
    }
    
    @IBAction func pressMins(_ sender: Any) {
    }
    
    @IBAction func pressTimes(_ sender: Any) {
    }
    
    @IBAction func pressDivide(_ sender: Any) {
    }
    
    
    
    
    
    
}

