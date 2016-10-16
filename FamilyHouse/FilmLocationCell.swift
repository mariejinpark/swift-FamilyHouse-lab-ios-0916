//
//  FilmLocationTableViewCell2.swift
//  FamilyHouse
//
//  Created by Marie Park on 10/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class FilmLocationCell: UITableViewCell {
    
    var filmLocation: FilmLocation! {
        didSet{
            addressLabel.text = filmLocation.address
            locationNameLabel.text = filmLocation.name
            tvseriesLabel.text = filmLocation.tvSeries.description
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var locationNameLabel: UILabel!
    @IBOutlet weak var tvseriesLabel: UILabel!
    
    
    
    
    
}
