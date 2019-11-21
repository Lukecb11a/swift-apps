//
//  Tamagotchi Class.swift
//  Tamagotchi
//
//  Created by Compton-Burnett, Luke (PGW) on 21/11/2019.
//  Copyright © 2019 Luke Compton-Burnett. All rights reserved.
//

import Foundation

class Tamagotchi {
    
    private var age = 0
    private var health = 8
    private var weight = 20
    private var isSick = false
    private var diciplineLevel = 0
    private var needsAttention = false
    private var needsPoo = false
    private var hunger = 10
    private var happiness = 0
    private var sleepiness = 0
    private var lightOn = true
    
    func eat(foodType: String) {
        if foodType == "snack" {
            hunger -= 1
            happiness += 4
        }
        else if foodType == "meal" {
            hunger -= 4
            happiness += 2
        }
        if happiness > 10 {
            happiness = 10
        }
        if hunger < 0 {
            hunger = 0
        }
    }
    
    
    //sleep
    func sleepinessIncrement() {
        sleepiness += 1
    }
    
    func setLight(lightState: Bool) {
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
