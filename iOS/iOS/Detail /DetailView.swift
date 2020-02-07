//
//  DetailView.swift
//  iOS
//
//  Created by Andrew Miotke on 12/29/19.
//  Copyright © 2019 andrewmiotke. All rights reserved.
//

import UIKit

class DetailView: UIView {
    
    let mealName = UILabel()
    let details = UILabel()
    let sides = UILabel()
    let price = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
//        mealName.font = UIFont.preferredFont(forTextStyle: UIFont.systemFont(ofSize: 12, weight: .bold))
//        mealName.textColor = .black
        
        
        
    }

    required init?(coder: NSCoder) {
        fatalError()
    }
}
