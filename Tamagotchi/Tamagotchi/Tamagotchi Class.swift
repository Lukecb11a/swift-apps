//
//  Tamagotchi Class.swift
//  Tamagotchi
//
//  Created by Compton-Burnett, Luke (PGW) on 21/11/2019.
//  Copyright © 2019 Luke Compton-Burnett. All rights reserved.
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
    
    init (name:String) {
        self.name = name
    }
    
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
        }
        if happiness > 10 {
            happiness = 10
        }
        if hunger < 0 {
            hunger = 0
        }
    }
    
    
    //ignore
    func setLight(lightState: String) {
        if lightState == "on" {
            lightOn = true
        } else {
            lightOn = false
        }
        
    }
    
    func sleep () {
        var counter = 0
        while sleepiness > 0 {
            if lightOn == true && counter == 60000{
                happiness -= 1
                counter = 0
            }
            else if lightOn == false && counter == 60000 {
                happiness += 1
                counter = 0
                sleepiness -= 1
            }
        }
    }
    //ignore
    
    
    //game
    
    func playGame () {
        let correctDirection = Int.random(in:1...2)
        if let userGuess = readLine() {
            if String(correctDirection) == userGuess {
                happiness += 2
                print("Correct!!! Well Done")
            } else {
                print("hard luck")
                happiness -= 1
            }
        }
    }
    
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
    
    
    
    //die
    
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
    
    
    
    
    //get values
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
    
}
