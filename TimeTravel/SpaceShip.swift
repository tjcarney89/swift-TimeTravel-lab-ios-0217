//
//  SpaceShip.swift
//  TimeTravel
//
//  Created by James Campagno on 10/4/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class SpaceShip {
    
    let name: String
    var speed: Speed = .none
    var currentPlanet: Planet
    var description: String {
        return "\(name) flying at \(speed.rawValue)"
    }
    
    init(name: String, planet: Planet) {
        self.name = name
        currentPlanet = planet
    }
    
    func timeTravel() -> Bool {
        return speed.canTimeTravel
    }
    
    func isFaster(than spaceship: SpaceShip) -> Bool {
        return speed.isFaster(than: spaceship.speed)
    }
    
    func travel(to planet: Planet) -> Bool {
        
        switch planet {
        case .earth:
            if speed == .fast {
                currentPlanet = planet
                return true
            } else { return false }
        default:
            return false
        }
        
    }
    
    
}



enum Speed: Double {
    case none = 0, slow = 50, medium = 150, fast = 1000, lightSpeed = 1000000
    
    init(spaceSpeed: Double) {
        switch spaceSpeed {
        case 0..<50:
            self = .none
        case 50..<149:
            self = .slow
        case 150..<999:
            self = .medium
        case 1000..<999999:
            self = .fast
        default:
            self = .lightSpeed
        }
    }
    
    var canTimeTravel: Bool {
        switch self {
        case .lightSpeed:
            return true
        default:
            return false
        }
    }
    
    func isFaster(than speed: Speed) -> Bool {
        return self.rawValue > speed.rawValue
    }

}

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    
    var hasLife: Bool {
        switch self {
        case .earth, .mars:
            return true
        default:
            return false
        }
    }
    
    // Look up the weather of the planets
    var weather: Weather {
        switch self {
        case .earth:
            return .warm
        case .mars:
            return .cold
        default:
            return .hot
        }
    }

}


enum Weather {
    case cold, warm, hot, superDuperHot
}





