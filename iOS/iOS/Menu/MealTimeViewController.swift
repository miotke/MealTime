//
//  ViewController.swift
//  iOS
//
//  Created by Andrew Miotke on 12/9/19.
//  Copyright © 2019 andrewmiotke. All rights reserved.
//

import UIKit

class MealTimeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
  
    var listOfMeals = [Meal]() {
    // Computed property
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
                print("MEALS: \(self.listOfMeals)")
            }
        }
    }
    
    let menuCell = "menuCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.navigationItem.title = "Menu"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        registerNib()
    
    }
    
    func registerNib() {
        let nib = UINib(nibName: "MenuCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: menuCell)
    }
}

// MARK: - Table View
extension MealTimeViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("MEALS: \(listOfMeals.count)")
        return listOfMeals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: menuCell, for: indexPath) as! MenuCell
        let meal = listOfMeals[indexPath.row]
        
        cell.mealNameLabel.text = meal.meal_name
        cell.mealPriceLabel?.text = meal.price
        cell.shortDescription?.text = meal.details

        return cell
    }
}
