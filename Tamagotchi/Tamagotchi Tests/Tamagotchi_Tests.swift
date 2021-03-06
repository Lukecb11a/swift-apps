//
//  Tamagotchi_Tests.swift
//  Tamagotchi Tests
//
//  Created by Compton-Burnett, Luke (PGW) on 21/11/2019.
//  Copyright © 2019 Luke Compton-Burnett. All rights reserved.
//

import XCTest

class Tamagotchi_Tests: XCTestCase {
    let tamagotchi = Tamagotchi(name:"Stephen")
    func testTamagotchiHungerGoesDownWhenSnackIsEaten() {
        //arrange
        
        let hunger = tamagotchi.getHunger()
        //act
        tamagotchi.eat(foodType: "snack")
        
        //assert
        XCTAssertEqual(hunger, tamagotchi.getHunger() + 1)
    }
    
    func testTamagotchiHungerGoesDownWhenMealIsEaten() {
        //arrange
        
        let hunger = tamagotchi.getHunger()
        //act
        tamagotchi.eat(foodType: "meal")
        
        //assert
        XCTAssertEqual(hunger, tamagotchi.getHunger() + 4)
    }
    
    func testTamagotchiDiesIfToldTo() {
        tamagotchi.die()
        XCTAssertEqual(tamagotchi.dead, true)
    }
    
    func testTamagotchiPoosWhenToldTo() {
        tamagotchi.poo()
        XCTAssertEqual(tamagotchi.needsPoo, false)
    }
    
    func testTamagotchiReturnsAge()

}
