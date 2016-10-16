//
//  FilmLocationCell3.swift
//  FamilyHouse
//
//  Created by Marie Park on 10/15/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class FilmLocationCell: UITableViewCell {
    
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var locationNameLabel: UILabel!
    @IBOutlet weak var tvseriesLabel: UILabel!
    
    
    var filmLocation: FilmLocation! {
        didSet{
            addressLabel.text = filmLocation.address
            locationNameLabel.text = filmLocation.name
            tvseriesLabel.text = filmLocation.tvSeries.description
        }
    }
    
    
}

