//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Daniel Jin on 9/12/17.
//  Copyright © 2017 Daniel Jin. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var planetName: UILabel!
    @IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var planetDiameter: UILabel!
    @IBOutlet weak var planetDayLength: UILabel!
    @IBOutlet weak var planetDistanceFromSun: UILabel!
    
    var displayedPlanet: Planet?
    
    func updateWithPlanet(planet: Planet) {
        planetName.text = planet.name
        planetImage.image = UIImage(named: planet.imageName)
        planetDiameter.text = "Diameter: \(String(planet.diameter)) km"
        planetDayLength.text = "Day length: \(String(planet.dayLength)) hrs"
        planetDistanceFromSun.text = "Distance from sun: \(String(planet.millionKMsFromSun)) million km"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Check if the displayedPlanet variable has a value
        guard let displayedPlanet = displayedPlanet else { return }
        updateWithPlanet(planet: displayedPlanet)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
