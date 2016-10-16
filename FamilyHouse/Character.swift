//
//  Character.swift
//  FamilyHouse
//
//  Created by Marie Park on 10/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

struct Character {
    let name: String
    let realLifeName: String
    let tvSeries: TVSeries
    var currentLocation: FilmLocation
    let image: UIImage
    
    func canReportToSet(on location:FilmLocation) -> Bool {
        if self.currentLocation.address == location.address {
            return true
        } else {
            return false
        }
    }
    
    mutating func reportToSet(on location: FilmLocation) {
        guard canReportToSet(on: location) else {return}
            currentLocation = location
    }

}
