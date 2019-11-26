//
//  main.swift
//  Tamagotchi
//
//  Created by Compton-Burnett, Luke (PGW) on 21/11/2019.
//  Copyright © 2019 Luke Compton-Burnett. All rights reserved.
//

import Foundation

print("Hello, World!")

let tamagotchi1 = Tamagotchi(name:"Stephen")

func randomAction () {
    let doomsday = Int.random(in:1...70)
    if doomsday < 4 {
        tamagotchi1.die()
    }
    else if doomsday < 15 {
        tamagotchi1.hunger += 3
    }
    else if doomsday < 25 {
        tamagotchi1.happiness -= 3
    }
    else if doomsday < 40 {
        tamagotchi1.age += 1
    }
    else if doomsday < 45 {
        tamagotchi1.needsAttention = true
    }
    else if doomsday < 50 {
        tamagotchi1.needsPoo = true
    }
    else if doomsday < 60 {
        tamagotchi1.sleepiness += 3
    }
    else if doomsday < 70 {
        tamagotchi1.isSick = true
    }
}

func outputAll () {
    print("""
        Age: \(tamagotchi1.age)
        """)
}

func main () {
    print()
}
