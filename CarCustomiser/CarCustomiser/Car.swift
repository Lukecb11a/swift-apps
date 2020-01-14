//
//  Car.swift
//  CarCustomiser
//
//  Created by Compton-Burnett, Luke (PGW) on 13/01/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import Foundation

struct Car {
    var make: String
    var model: String
    var topSpeed: Int
    var acceleration: Double
    var handling: Int
    
    func displayStats () -> String {
        return """
            make: \(make)
            model: \(model)
            topSpeed: \(topSpeed)m/h
            acceleration (0-60): \(acceleration)s
            handling: \(handling)
        """
    }
}
