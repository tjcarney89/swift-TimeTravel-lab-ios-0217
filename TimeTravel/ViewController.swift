//
//  ViewController.swift
//  TimeTravel
//
//  Created by James Campagno on 10/4/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        millenniumFalcon.speed = .none
        currentSpeedLabel.text = "Current Speed: None"
        currentPlanetLabel.text = "Current Planet: Earth"
        
        
        
    }

    @IBOutlet weak var currentPlanetLabel: UILabel!
    @IBOutlet weak var currentSpeedLabel: UILabel!
    
    @IBOutlet weak var noneButton: UIButton!
    @IBOutlet weak var slowButton: UIButton!
    @IBOutlet weak var mediumButton: UIButton!
    @IBOutlet weak var fastButton: UIButton!
    @IBOutlet weak var lightSpeedButton: UIButton!
    
    @IBOutlet weak var mercuryButton: UIButton!
    @IBOutlet weak var venusButton: UIButton!
    @IBOutlet weak var earthButton: UIButton!
    @IBOutlet weak var marsButton: UIButton!
    @IBOutlet weak var jupiterButton: UIButton!
    @IBOutlet weak var saturnButton: UIButton!
    @IBOutlet weak var uranusButton: UIButton!
    @IBOutlet weak var neptuneButton: UIButton!
    
    var millenniumFalcon: SpaceShip = SpaceShip(name: "MilleniumFalcon", planet: .earth)
    
    
    @IBAction func speedTapped(_ sender: UIButton) {
        switch sender.titleLabel!.text! {
        case "None":
            currentSpeedLabel.text = "Current Speed: None"
            millenniumFalcon.speed = .none
        case "Slow":
            currentSpeedLabel.text = "Current Speed: Slow"
            millenniumFalcon.speed = .slow
        case "Medium":
            currentSpeedLabel.text = "Current Speed: Medium"
            millenniumFalcon.speed = .medium
        case "Fast":
            currentSpeedLabel.text = "Current Speed: Fast"
            millenniumFalcon.speed = .fast
        case "LIGHTSPEED!":
            currentSpeedLabel.text = "Current Speed: LIGHTSPEED!"
            millenniumFalcon.speed = .lightSpeed
        default:
            currentSpeedLabel.text = "How fast are we going?"
        }
        
    }
    
    
    
        

    @IBAction func planetTapped(_ sender: UIButton) {
        switch sender.titleLabel!.text! {
        case "Mercury":
            millenniumFalcon.travel(to: .mercury)
            if millenniumFalcon.travel(to: .mercury) == true {
                currentPlanetLabel.text = "Current Planet: \(millenniumFalcon.currentPlanet.capitalize)"
            } else {
                currentPlanetLabel.text = "Current Planet: \(millenniumFalcon.currentPlanet.capitalize)"
            }
            if millenniumFalcon.currentPlanet.weather == .cold {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "cold.png")!)
            } else if millenniumFalcon.currentPlanet.weather == .warm {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "warm.jpeg")!)
            } else if millenniumFalcon.currentPlanet.weather == .hot {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "hot.png")!)
            } else if millenniumFalcon.currentPlanet.weather == .superDuperHot {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "superduperhot.png")!)
            }
        case "Venus":
            millenniumFalcon.travel(to: .venus)
            if millenniumFalcon.travel(to: .venus) == true {
                currentPlanetLabel.text = "Current Planet: \(millenniumFalcon.currentPlanet.capitalize)"
            } else {
                currentPlanetLabel.text = "Current Planet: \(millenniumFalcon.currentPlanet.capitalize)"
            }
            if millenniumFalcon.currentPlanet.weather == .cold {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "cold.png")!)
            } else if millenniumFalcon.currentPlanet.weather == .warm {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "warm.jpeg")!)
            } else if millenniumFalcon.currentPlanet.weather == .hot {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "hot.png")!)
            } else if millenniumFalcon.currentPlanet.weather == .superDuperHot {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "superduperhot.png")!)
            }

        case "Earth":
            millenniumFalcon.travel(to: .earth)
            if millenniumFalcon.travel(to: .earth) == true {
                currentPlanetLabel.text = "Current Planet: \(millenniumFalcon.currentPlanet.capitalize)"
            } else {
                currentPlanetLabel.text = "Current Planet: \(millenniumFalcon.currentPlanet.capitalize)"
            }
            if millenniumFalcon.currentPlanet.weather == .cold {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "cold.png")!)
            } else if millenniumFalcon.currentPlanet.weather == .warm {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "warm.jpeg")!)
            } else if millenniumFalcon.currentPlanet.weather == .hot {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "hot.png")!)
            } else if millenniumFalcon.currentPlanet.weather == .superDuperHot {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "superduperhot.png")!)
            }

        case "Mars":
            millenniumFalcon.travel(to: .mars)
            if millenniumFalcon.travel(to: .mars) == true {
                currentPlanetLabel.text = "Current Planet: \(millenniumFalcon.currentPlanet.capitalize)"
            } else {
                currentPlanetLabel.text = "Current Planet: \(millenniumFalcon.currentPlanet.capitalize)"
            }
            if millenniumFalcon.currentPlanet.weather == .cold {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "cold.png")!)
            } else if millenniumFalcon.currentPlanet.weather == .warm {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "warm.jpeg")!)
            } else if millenniumFalcon.currentPlanet.weather == .hot {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "hot.png")!)
            } else if millenniumFalcon.currentPlanet.weather == .superDuperHot {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "superduperhot.png")!)
            }

        case "Jupiter":
            millenniumFalcon.travel(to: .jupiter)
            if millenniumFalcon.travel(to: .jupiter) == true {
                currentPlanetLabel.text = "Current Planet: \(millenniumFalcon.currentPlanet.capitalize)"
            } else {
                currentPlanetLabel.text = "Current Planet: \(millenniumFalcon.currentPlanet.capitalize)"
            }
            if millenniumFalcon.currentPlanet.weather == .cold {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "cold.png")!)
            } else if millenniumFalcon.currentPlanet.weather == .warm {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "warm.jpeg")!)
            } else if millenniumFalcon.currentPlanet.weather == .hot {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "hot.png")!)
            } else if millenniumFalcon.currentPlanet.weather == .superDuperHot {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "superduperhot.png")!)
            }

        case "Saturn":
            millenniumFalcon.travel(to: .saturn)
            if millenniumFalcon.travel(to: .saturn) == true {
                currentPlanetLabel.text = "Current Planet: \(millenniumFalcon.currentPlanet.capitalize)"
            } else {
                currentPlanetLabel.text = "Current Planet: \(millenniumFalcon.currentPlanet.capitalize)"
            }
            if millenniumFalcon.currentPlanet.weather == .cold {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "cold.png")!)
            } else if millenniumFalcon.currentPlanet.weather == .warm {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "warm.jpeg")!)
            } else if millenniumFalcon.currentPlanet.weather == .hot {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "hot.png")!)
            } else if millenniumFalcon.currentPlanet.weather == .superDuperHot {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "superduperhot.png")!)
            }

        case "Uranus":
            millenniumFalcon.travel(to: .uranus)
            if millenniumFalcon.travel(to: .uranus) == true {
                currentPlanetLabel.text = "Current Planet: \(millenniumFalcon.currentPlanet.capitalize)"
            } else {
                currentPlanetLabel.text = "Current Planet: \(millenniumFalcon.currentPlanet.capitalize)"
            }
            if millenniumFalcon.currentPlanet.weather == .cold {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "cold.png")!)
            } else if millenniumFalcon.currentPlanet.weather == .warm {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "warm.jpeg")!)
            } else if millenniumFalcon.currentPlanet.weather == .hot {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "hot.png")!)
            } else if millenniumFalcon.currentPlanet.weather == .superDuperHot {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "superduperhot.png")!)
            }

        case "Neptune":
            millenniumFalcon.travel(to: .neptune)
            if millenniumFalcon.travel(to: .neptune) == true {
                currentPlanetLabel.text = "Current Planet: \(millenniumFalcon.currentPlanet.capitalize)"
            } else {
                currentPlanetLabel.text = "Current Planet: \(millenniumFalcon.currentPlanet.capitalize)"
            }
            if millenniumFalcon.currentPlanet.weather == .cold {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "cold.png")!)
            } else if millenniumFalcon.currentPlanet.weather == .warm {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "warm.jpeg")!)
            } else if millenniumFalcon.currentPlanet.weather == .hot {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "hot.png")!)
            } else if millenniumFalcon.currentPlanet.weather == .superDuperHot {
                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "superduperhot.png")!)
            }

        default:
            currentPlanetLabel.text = "Where are we?"
            
        }
    }
    

}

