//
//  Speed.swift
//  TimeTravel
//
//  Created by TJ Carney on 2/10/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Double {
    case none = 0
    case slow = 50
    case medium = 150
    case fast = 1000
    case lightSpeed = 1000000
    
    init(spaceSpeed: Double) {
        switch spaceSpeed {
        case 0:
            self = .none
        case 1...149:
            self = .slow
        case 150...999:
            self = .medium
        case 1000...999999:
            self = .fast
        default:
            self = .lightSpeed
        }
    }
    
    var isTravelingAtLightspeed: Bool {
        if self == .lightSpeed {
            return true
        } else {
            return false
        }
    }
    
    func isFaster(than speed: Speed) -> Bool {
        if self.rawValue > speed.rawValue {
            return true
        } else {
            return false
        }
    }
}
