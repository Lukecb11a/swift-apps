//
//  tamagotchi.swift
//  Tamagotchi app
//
//  Created by Compton-Burnett, Luke (PGW) on 14/01/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import Foundation

class Tamagotchi {
    var age = 0
    var health = 8
    var weight = 20
    var isSick = false
    var diciplineLevel = 0
    var needsAttention = false
    var needsPoo = false
    var hunger = 10
    var happiness = 0
    var sleepiness = 0
    var lightOn = true
    var dead = false
    var name = ""
    var playingGame = false
    
    //initialiser
    init (name:String) {
        self.name = name
    }
    
    //eating
    func eat(foodType: String) {
        if foodType == "snack" {
            hunger -= 1
            happiness += 4
            weight += 4
        }
        else if foodType == "meal" {
            hunger -= 4
            happiness += 2
            weight += 8
        } else {
            hunger = 100
        }
        if happiness > 10 {
            happiness = 10
        }
        if hunger < 0 {
            hunger = 0
        }
    }
    
    //play game
    func playGame (humanChoice: Int) -> String {
        playingGame = true
        func findWinner(ch1: Int, ch2:Int) -> Int{
            if ((ch1 == 1) && (ch2 == 3)) || ((ch1 == 2) && (ch2 == 1)) || ((ch1 == 3) && (ch2 == 2)) {
                return 1
            } else {
                return 2
            }
        }
        let choiceArray = ["","rock", "paper", "scissors"]
        let tamagotchiChoice = Int.random(in:1...3)
        if tamagotchiChoice == humanChoice {
            return """
            You and your Tamamagotchi both picked \(choiceArray[humanChoice]).
            Please pick again
            """
        }
        if findWinner(ch1: humanChoice, ch2: tamagotchiChoice) == 1 {
            playingGame = false
            return "YOU WON!!! You picked \(choiceArray[humanChoice]) and the tamagotchi picked \(choiceArray[tamagotchiChoice])."
        } else {
            playingGame = false
            return "The tamagotchi won :( You picked \(choiceArray[humanChoice]) and the tamagotchi picked \(choiceArray[tamagotchiChoice])"
        }
        
    }
    
    //cure illness
    func cureIllness () {
        let correctMedicine = Int.random(in:1...3)
        if correctMedicine == 1 {
            print("Tamagotchi is cured!!")
        } else {
            print("The medicine failed do you want to try again?")
            if let again = readLine() {
                if again == "yes" {
                    cureIllness()
                }
            }
        }
    }
    
    //random actions
    func performRandomAction() {
        let randNum = Int.random(in:1...3)
    }
    
    func die () {
        dead = true
        print("Your tamagotchi died... RIP")
    }
    
    func poo () {
        needsPoo = false
        let sick = Int.random(in:1...15)
        if sick == 4 {
            isSick = true
        }
    }
    
    
    //getters
    func getAge() -> Int{
        return age
    }
    
    func getHealth() -> Int{
        return health
    }
    
    func getHappiness() -> Int {
        return happiness
    }
    
    func getHunger() -> Int {
        return hunger
    }
    
    func getSleepiness() -> Int {
        return sleepiness
    }
    
    func displayUserStats() -> String {
        return """
        health: \(health)
        weight: \(weight)
        hunger: \(hunger)
        happiness: \(happiness)
        sleepiness: \(sleepiness)
        """
    }
}
