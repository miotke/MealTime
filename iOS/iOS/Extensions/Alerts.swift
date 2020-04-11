//
//  Alerts.swift
//  iOS
//
//  Created by Andrew Miotke on 4/11/20.
//  Copyright © 2020 andrewmiotke. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func orderAlertController() {
        
        DispatchQueue.main.async {
            let orderAlert = UIAlertController(title: "Order Placed!", message: "Thank you for placing an order. Sadly this is not a real app and is not capable of ordering the food you are requesting.", preferredStyle: .alert)
             
             let okayAction = UIAlertAction(title: "Okay 😕", style: .default) { (UIAlertAction) in
                 return
             }
             let cancelAction = UIAlertAction(title: "Cancel", style: .destructive) { (UIAlertAction) in
                 return
             }
             
             orderAlert.addAction(okayAction)
             orderAlert.addAction(cancelAction)
             
             self.present(orderAlert, animated: true, completion: nil)
        }
 
    }
}
