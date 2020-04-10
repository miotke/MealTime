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
    var mealNameLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("🥃 \(String(describing: mealName!))")
        print("🌱 \(String(describing: mealPrice!))")
        createLabel()
    }
    
    func createLabel() {
        
        mealNameLabel.font = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 16, weight: .bold))
        mealNameLabel.text = mealName
        self.view.addSubview(mealNameLabel)
        
        NSLayoutConstraint.activate([
            mealNameLabel.topAnchor.constraint(equalTo: view.topAnchor),
            mealNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mealNameLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            mealNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }
}
