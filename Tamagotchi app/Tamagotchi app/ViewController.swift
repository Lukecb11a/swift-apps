//
//  ViewController.swift
//  Tamagotchi app
//
//  Created by Compton-Burnett, Luke (PGW) on 14/01/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tamagotchiStats: UILabel!
    @IBOutlet weak var feedMeal: UIButton!
    @IBOutlet weak var feedSnack: UIButton!
    @IBOutlet weak var playGame: UIButton!
    
    var myTamagotchi = Tamagotchi(name:"Stephen") {
        didSet {
            tamagotchiStats.text = myTamagotchi.displayUserStats()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tamagotchiStats.text = myTamagotchi.displayUserStats()
    }
    
    @IBAction func feedMealButton(_ sender: Any) {
        myTamagotchi.eat(foodType: "meal")
        updateDisplay()
    }
    
    @IBAction func feedStackButton(_ sender: Any) {
        myTamagotchi.eat(foodType: "snack")
    }
    
    @IBAction func playGameButton(_ sender: Any) {
        
    }
    func updateDisplay() {
        tamagotchiStats.text = myTamagotchi.displayUserStats()
    }
    
    

}

