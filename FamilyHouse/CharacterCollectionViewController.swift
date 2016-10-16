//
//  CharacterCollectionViewController.swift
//  FamilyHouse
//
//  Created by Marie Park on 10/15/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

private let reuseIdentifier = "CharacterCell"

class CharacterCollectionViewController: UICollectionViewController {

    var filmLocation: FilmLocation!
    var characters: [Character]!
    
    @IBAction func doneButton(_ sender: AnyObject) {
        for (_, item) in characters.enumerated() {
            if item.currentLocation.address == filmLocation.address {
                print("\(item.name) can report to the set of \(item.tvSeries) at \(item.currentLocation.name) which is located at \(item.currentLocation.address)")
            }
        }
    }
    
        func generateCharacters() {
        let fullHouseLocation = FilmLocation (name: "LA", address: "90210 Fun Land", tvSeries: .fullHouse)
        let familyMattersLocation = FilmLocation (name: "NYC", address: "12 Love Lane", tvSeries: .familyMatters)
        
        let firstCharacter = Character(name: "Jesse Katsopolis", realLifeName: "John", tvSeries: .fullHouse, currentLocation: fullHouseLocation, image: #imageLiteral(resourceName: "jesse.jpg"))
        
        let secondCharacter = Character(name: "Danny Tanner", realLifeName: "Bob Saget", tvSeries: .fullHouse, currentLocation: fullHouseLocation, image: #imageLiteral(resourceName: "danny.jpg"))
        
        let thirdCharacter = Character(name: "Joey Gladstone", realLifeName: "Dave", tvSeries: .fullHouse, currentLocation: fullHouseLocation, image: #imageLiteral(resourceName: "joey.jpg"))
        
         let fourthCharacter = Character(name: "Steve Urkel", realLifeName: "Jaleel", tvSeries: .familyMatters, currentLocation: familyMattersLocation, image: #imageLiteral(resourceName: "steve.jpg"))
        
        characters.append(contentsOf: [firstCharacter, secondCharacter, thirdCharacter, fourthCharacter])
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateCharacters()
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

    }
    
    
    //Mark: UICollectionViewDataSource:
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
            return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return characters.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CharacterCell", for: indexPath) as! CharacterCollectionViewCell
    
        cell.character = characters[indexPath.item]
        
        return cell
    }

    
    
    // MARK: UICollectionViewDelegate
   
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! CharacterCollectionViewCell
        cell.characterImageView.alpha = 0.5
}




}
