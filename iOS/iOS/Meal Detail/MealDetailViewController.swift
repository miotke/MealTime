//
//  DetailViewController.swift
//  iOS
//
//  Created by Andrew Miotke on 12/29/19.
//  Copyright © 2019 andrewmiotke. All rights reserved.
//

import UIKit

class MealDetailViewController: UIViewController {
    
    var mealName: String?
    var mealDetails: String?
    var sides: String?
    var mealPrice: String?
    var mealRating: String?
    
    @IBOutlet weak var mealPriceLabel: UILabel!
    @IBOutlet weak var mealRatingLabel: UILabel!
    @IBOutlet weak var mealImage: UILabel!
    @IBOutlet weak var mealDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationController()
        
        mealPriceLabel.text = "$\(mealPrice ?? "🤷‍♂️")"
        mealRatingLabel.text = "Rating: \(mealRating ?? "N/A")"
        mealDescription.text = mealDetails
    }
}

extension MealDetailViewController {
    func setupNavigationController() {
        navigationItem.title = mealName
        
    }
}
