//
//  PlanetListViewController.swift
//  SolarSystem
//
//  Created by Daniel Jin on 9/12/17.
//  Copyright © 2017 Daniel Jin. All rights reserved.
//

import UIKit

class PlanetListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // Return the count of the planets array in PlanetController class
        return PlanetController.planets.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planet", for: indexPath)
        
        // Configure the cell...
        let planet = PlanetController.planets[indexPath.row]
        cell.textLabel?.text = planet.name
        cell.detailTextLabel?.text = "Planet \(indexPath.row + 1)"
        cell.imageView?.image = UIImage(named: planet.name)
        

        return cell
    }
   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Make sure you have the correct segue
        if segue.identifier == "toPlanetDetails" {
            
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let planetDetailVC = segue.destination as? PlanetDetailViewController
            
            planetDetailVC?.displayedPlanet = PlanetController.planets[indexPath.row]
            
        }
    }
 

}
