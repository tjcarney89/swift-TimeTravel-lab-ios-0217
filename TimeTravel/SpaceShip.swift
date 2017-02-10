//
//  SpaceShip.swift
//  TimeTravel
//
//  Created by TJ Carney on 2/10/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class SpaceShip {
    
    var name: String
    var speed: Speed = .slow
    var currentPlanet: Planet
    var description: String {
        return "Hello Space Traveler! We are currently passing \(currentPlanet) at a speed of \(speed) MPH!"
    }
    
    init(name: String, planet: Planet) {
        self.name = name
        self.currentPlanet = planet
    }
    
    func timeTravel() -> Bool {
        if self.speed == .lightSpeed {
            return true
        } else {
            return false
        }
    }
    
    func isFaster(than spaceShip: SpaceShip) -> Bool {
        if self.speed.rawValue > spaceShip.speed.rawValue {
            return true
        } else {
            return false
        }
    }
    
    func travel(to planet: Planet) -> Bool {
        if self.currentPlanet == .mercury {
            return false
        } else if planet == .venus && self.speed == .fast {
            self.currentPlanet = planet
            return true
        } else if planet == .earth && self.speed == .fast {
            self.currentPlanet = planet
            return true
        } else if planet == .mars && self.speed == .lightSpeed {
            self.currentPlanet = planet
            return true
        } else if planet == .jupiter && self.speed == .slow {
            self.currentPlanet = planet
            return true
        } else if planet == .saturn && self.speed == .medium {
            self.currentPlanet = planet
            return true
        } else if planet == .uranus && self.speed == .slow {
            self.currentPlanet = planet
            return true
        } else if planet == .neptune && self.speed == .fast {
            self.currentPlanet = planet
            return true
        } else if planet == .neptune && self.speed == .lightSpeed {
            self.currentPlanet = .mars
            return false
        } else if planet == .venus && self.speed == .lightSpeed {
            self.currentPlanet = .mars
            return false
        } else {
            return false
        }
    }
}
