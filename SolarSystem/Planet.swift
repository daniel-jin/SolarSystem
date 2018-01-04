//
//  Planet.swift
//  SolarSystem
//
//  Created by Daniel Jin on 9/12/17.
//  Copyright © 2017 Daniel Jin. All rights reserved.
//

import Foundation

class Planet {
    
    init(name: String, diameter: Int, dayLength: Float, millionKMsFromSun: Float) {
        
        self.name = name
        self.imageName = name
        self.diameter = diameter
        self.dayLength = dayLength
        self.millionKMsFromSun = millionKMsFromSun
    }
    
    let name: String
    let imageName: String
    let diameter: Int
    let dayLength: Float
    let millionKMsFromSun: Float
}
