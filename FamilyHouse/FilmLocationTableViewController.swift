//
//  FilmLocationTableViewController3.swift
//  FamilyHouse
//
//  Created by Marie Park on 10/15/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


import UIKit

class FilmLocationTableViewController: UITableViewController {
    
    var filmLocations: [FilmLocation]! 
    
    func generateFilmLocations()  {
        let location1 = FilmLocation(name: "New York", address: "The Place Where Dreams Come True", tvSeries: .fullHouse)
        let location2 = FilmLocation(name: "Los Angeles", address: "Somewhere", tvSeries: .familyMatters)
        
        filmLocations = [location1, location2]
        print(filmLocations)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //this line below reloads the data in the table
        tableView.reloadData()
        print("View loaded")
    }
    
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
          // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return filmLocations.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FilmLocationCell", for: indexPath) as! FilmLocationCell
            print(cell)
        
        let location = filmLocations[indexPath.item]
        cell.filmLocation = location
       
        print(index)
        
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toCollectionView" {
            
            let dest = segue.destination as? CharacterCollectionViewController
            //guard let unwraps a variable and if this is nil, the return exits the function
            guard let newDestination = dest else { print("Exited at newDestination"); return }
            
            let selectedLocation = tableView.indexPathForSelectedRow
            guard let newSelectedLocation = selectedLocation else { print("Exited at newSelectedLocation"); return }
            
            newDestination.filmLocation = filmLocations[newSelectedLocation.item]
            
        }
    }
}

