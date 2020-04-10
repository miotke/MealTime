//
//  DetailViewController.swift
//  iOS
//
//  Created by Andrew Miotke on 12/29/19.
//  Copyright © 2019 andrewmiotke. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var mealName: String?
    var mealPrice: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("🥃 \(String(describing: mealName))")
        print("🌱 \(mealPrice)")
        self.view.backgroundColor = UIColor.red
    }
}
