//
//  MenuCell.swift
//  iOS
//
//  Created by Andrew Miotke on 12/9/19.
//  Copyright © 2019 andrewmiotke. All rights reserved.
//

import UIKit

class MenuCell: UITableViewCell {

    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var mealPriceLabel: UILabel!
    @IBOutlet weak var shortDescription: UILabel!
    
    var price = "10.99"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        mealNameLabel.text = "Burger"
        mealPriceLabel.text = "$\(price)"
        shortDescription.text = "Just some basic ass burger"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
