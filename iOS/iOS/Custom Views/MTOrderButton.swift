//
//  MTOrderButton.swift
//  iOS
//
//  Created by Andrew Miotke on 4/11/20.
//  Copyright © 2020 andrewmiotke. All rights reserved.
//

import UIKit

@IBDesignable class MTOrderButton: UIButton {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        configureButton()
        dropShadow()
    }
    
    func configureButton() {
        layer.cornerRadius = frame.size.height / 2
        self.backgroundColor = UIColor.systemOrange
        self.titleLabel?.font = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 21, weight: .regular))
        self.titleLabel?.text = "Place Order"
    }
    
    func dropShadow() {
        self.layer.shadowColor = UIColor.systemGray2.cgColor
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = CGSize(width: 3, height: 8)
        self.layer.shadowRadius = 10
    }

}
