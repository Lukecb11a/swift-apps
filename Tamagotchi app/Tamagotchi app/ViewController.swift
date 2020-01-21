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
    @IBOutlet var generalText: UILabel!
    @IBOutlet var ageDisplay: UILabel!
    
    var timeRemaining = 5
    var timer: Timer?
    
    var myTamagotchi = Tamagotchi(name:"Stephen") {
        didSet {
            tamagotchiStats.text = myTamagotchi.displayUserStats()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateDisplay()
        generalText.text = ""
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(countdown), userInfo: nil, repeats: true)
    }
    
    @IBAction func feedMealButton(_ sender: Any) {
        myTamagotchi.eat(foodType: "meal")
        updateDisplay()
    }
    
    @IBAction func feedStackButton(_ sender: Any) {
        myTamagotchi.eat(foodType: "snack")
        updateDisplay()
    }
    
    @IBAction func playGameButton(_ sender: Any) {
        generalText.text = """
        You are now playing a game of
        Rock, Paper, Scissors.
        Please pick your weapon...
        """
        myTamagotchi.playingGame = true
        
    }
    func updateDisplay() {
        tamagotchiStats.text = myTamagotchi.displayUserStats()
        ageDisplay.text = "age: \(myTamagotchi.age)"
    }
    @IBAction func pickRock(_ sender: Any) {
        if myTamagotchi.playingGame == true {
            generalText.text = myTamagotchi.playGame(humanChoice: 1)
        }
    }
    @IBAction func pickPaper(_ sender: Any) {
        if myTamagotchi.playingGame == true {
            generalText.text = myTamagotchi.playGame(humanChoice: 2)
        }
    }
    @IBAction func pickScissors(_ sender: Any) {
        if myTamagotchi.playingGame == true {
            generalText.text = myTamagotchi.playGame(humanChoice: 3)
        }
    }
    
    @objc func countdown () {
        if timeRemaining > 0 {
            timeRemaining -= 1
            
        } else {
            timeRemaining = 5
            myTamagotchi.age += 1
            updateDisplay()
    
        }
    }
    
    

}

