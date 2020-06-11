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
    var inputText: String = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set border around the output label
        output.layer.borderColor = UIColor.black.cgColor
        output.layer.borderWidth = 1.5
        
        output.text = ""
        
        //enable the output label to shrink the text if the text gets too long
        output.adjustsFontSizeToFitWidth = true
        output.minimumScaleFactor = 0.2
        
    }
    
    func refreshDisplay() {
        //update the output label
        if inputText == " " {
            enableNumberButtons()
            var outputText = ""
            for i in stack {
                outputText += i
            }
            output.text = outputText
        } else {
            output.text = inputText
            if Array(inputText).count >= 4 {
                disableNumberButtons()
            }
        }
    }
    
    func disableNumberButtons() {
        button1.isEnabled = false
        button2.isEnabled = false
        button3.isEnabled = false
        button4.isEnabled = false
        button5.isEnabled = false
        button6.isEnabled = false
        button7.isEnabled = false
        button8.isEnabled = false
        button9.isEnabled = false
        button0.isEnabled = false
    }
    
    func enableNumberButtons() {
        button1.isEnabled = true
        button2.isEnabled = true
        button3.isEnabled = true
        button4.isEnabled = true
        button5.isEnabled = true
        button6.isEnabled = true
        button7.isEnabled = true
        button8.isEnabled = true
        button9.isEnabled = true
        button0.isEnabled = true
    }
    
    @IBAction func press1(_ sender: Any) {
        inputText += "1"
        refreshDisplay()
    }
    
    @IBAction func press2(_ sender: Any) {
        inputText += "2"
        refreshDisplay()
    }
    
    @IBAction func press3(_ sender: Any) {
        inputText += "3"
        refreshDisplay()
    }
    
    @IBAction func press4(_ sender: Any) {
        inputText += "4"
        refreshDisplay()
    }
    
    @IBAction func press5(_ sender: Any) {
        inputText += "5"
        refreshDisplay()
    }
    
    @IBAction func press6(_ sender: Any) {
        inputText += "6"
        refreshDisplay()
    }
    
    @IBAction func press7(_ sender: Any) {
        inputText += "7"
        refreshDisplay()
    }
    
    @IBAction func press8(_ sender: Any) {
        inputText += "8"
        refreshDisplay()
    }
    
    @IBAction func press9(_ sender: Any) {
        inputText += "9"
        refreshDisplay()
    }
    
    @IBAction func press0(_ sender: Any) {
        inputText += "0"
        refreshDisplay()
    }
    
    
    
    @IBAction func pressEval(_ sender: Any) {
        let calculator =  Calculator()
        let result = calculator.calculate(stack: stack)
        output.text = result
    }
    
    @IBAction func pressClear(_ sender: Any) {
        stack = []
        inputText = " "
        refreshDisplay()
    }
    
    @IBAction func pressEnter(_ sender: Any) {
        if inputText != " " {
            stack.append(inputText)
            inputText = " "
            refreshDisplay()
        }
    }
    
    @IBAction func pressChangeSign(_ sender: Any) {
        //change the sign to either - or nothing
        if Array(inputText)[0] == "-" {
            inputText.remove(at: inputText.startIndex)
        } else {
            inputText = "-" + inputText
        }
        refreshDisplay()
    }
    
    
    
    @IBAction func pressPlus(_ sender: Any) {
        if inputText != " " {
            stack.append(inputText)
            inputText = " "
        }
        stack.append(" +")
        refreshDisplay()
    }
    
    @IBAction func pressMins(_ sender: Any) {
        if inputText != " " {
            stack.append(inputText)
            inputText = " "
        }
        stack.append(" -")
        refreshDisplay()
    }
    
    @IBAction func pressTimes(_ sender: Any) {
        if inputText != " " {
            stack.append(inputText)
            inputText = " "
        }
        stack.append(" *")
        refreshDisplay()
    }
    
    @IBAction func pressDivide(_ sender: Any) {
        if inputText != " " {
            stack.append(inputText)
            inputText = " "
        }
        stack.append(" /")
        refreshDisplay()
    }
    
    
    
    
    
    
    
    
}

