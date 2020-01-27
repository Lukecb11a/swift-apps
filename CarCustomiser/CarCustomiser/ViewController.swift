//
//  ViewController.swift
//  CarCustomiser
//
//  Created by Compton-Burnett, Luke (PGW) on 13/01/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet var nextCarButton: UIButton!
    @IBOutlet var remainingTime: UILabel!
    @IBOutlet var vandalism: UISwitch!
    @IBOutlet var goFasterStripes: UISwitch!
    @IBOutlet var tyresPackage: UISwitch!
    @IBOutlet var engineAndExhaustPackage: UISwitch!
    @IBOutlet var carStats: UILabel!
    @IBOutlet var displayMoney: UILabel!
    var timeRemaining = 30
    
    var timer: Timer?
    
    var money = 1000 {
        didSet {
            displayMoney.text = "Money: \(money)"
            disableSwitches()
        }
    }
    var starterCars = StarterCars()
    var car: Car? {
        didSet {
            carStats.text = car?.displayStats()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        car = starterCars.cars[0]
        money = 1000
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(countdown), userInfo: nil, repeats: true)
        remainingTime.text = "\(timeRemaining)"
    }
    
    func disableSwitches () {
        if (money < 500) && (engineAndExhaustPackage.isOn == false) {
            engineAndExhaustPackage.isEnabled = false
        } else {
            engineAndExhaustPackage.isEnabled = true
        }
        if (money < 500) && (tyresPackage.isOn == false) {
            tyresPackage.isEnabled = false
        } else {
            tyresPackage.isEnabled = true
        }
        if (money < 500) && (goFasterStripes.isOn == false) {
            goFasterStripes.isEnabled = false
        } else {
            goFasterStripes.isEnabled = true
        }
        if (money < 1000) && (vandalism.isOn == false) {
            vandalism.isEnabled = false
        } else {
            vandalism.isEnabled = true
        }
    }
    
    func resetSwitches() {
        money = 1000
        engineAndExhaustPackage.setOn(false, animated: true)
        tyresPackage.setOn(false, animated: true)
        goFasterStripes.setOn(false, animated: true)
        vandalism.setOn(false, animated: true)
    }
    
    @IBAction func nextCar(_ sender: Any) {
        if starterCars.counter >= starterCars.cars.count - 1 {
            starterCars.counter = 0
        } else {
            starterCars.counter += 1
        }
        car = starterCars.cars[starterCars.counter]
        resetSwitches()
        
    }
    
    @IBAction func tyresToggle(_ sender: Any) {
        if tyresPackage.isOn {
            car?.handling += 1
            money -= 500
        } else {
            car?.handling -= 1
            money += 500
        }
    }
    
    @IBAction func engineAndExhaustToggle(_ sender: Any) {
        if engineAndExhaustPackage.isOn {
            car?.topSpeed += 5
            money -= 500
        } else {
            car?.topSpeed -= 5
            money += 500
        }
    }
    
    @IBAction func goFasterStripesToggle(_ sender: Any) {
        if goFasterStripes.isOn {
            car?.topSpeed += 10
            money -= 500
        } else {
            car?.topSpeed -= 10
            money += 500
        }
    }
    
    @IBAction func vandalismToggle(_ sender: Any) {
        if vandalism.isOn {
            car?.acceleration -= 3
            money -= 1000
        } else {
            car?.acceleration += 3
            money += 1000
        }
    }
    
    
    
}

