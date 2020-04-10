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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("🥃 \(mealName)")
        self.view.backgroundColor = UIColor.red
    }
}
