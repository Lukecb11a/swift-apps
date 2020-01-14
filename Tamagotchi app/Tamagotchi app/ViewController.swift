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
    
    let tamagotchi1 = Tamagotchi(name:"Stephen")
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tamagotchiStats.text = tamagotchi1.displayUserStats()
    }
    
    @IBAction func feedMeal(_ sender: Any) {
        tamagotchi1
    }

}

