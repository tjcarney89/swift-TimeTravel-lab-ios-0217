//
//  Planet.swift
//  TimeTravel
//
//  Created by TJ Carney on 2/10/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    
    var hasLife: Bool {
        if self == .earth || self == .mars {
            return true
        } else {
            return false
        }
    }
    
    var capitalize: String {
        switch self {
        case .mercury:
            return "Mercury"
        case .venus :
            return "Venus"
        case .earth:
            return "Earth"
        case .mars:
            return "Mars"
        case .jupiter:
            return "Jupiter"
        case .saturn:
            return "Saturn"
        case .uranus:
            return "Uranus"
        case .neptune:
            return "Neptune"
        }
    }
        
    var weather: Weather {
        if self == .mercury {
            return .hot
        } else if self == .venus {
            return .superDuperHot
        } else if self == .earth || self == .mars {
            return .warm
        } else {
            return .cold
        }
    }
}
