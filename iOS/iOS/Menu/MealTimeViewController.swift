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
      
    let menuCell = "menuCell"
    let mealDataApiUrl = "https://afternoon-stream-26309.herokuapp.com/meals/"
    
    var newMeals = [Meal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        self.navigationItem.title = "Menu"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        registerNib()
        
        let urlString = mealDataApiUrl
        if let url = URL(string: urlString) {
            if let data = try? Data(contentsOf: url) {
                parse(json: data)
            }
        }
    }
    
    func parse(json: Data) {
        let decoder = JSONDecoder()
        if let jsonMeals = try? decoder.decode([Meal].self, from: json) {

            for r in jsonMeals {
                newMeals.append(r)
            }

            tableView.reloadData()
        }
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
        return newMeals.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row selected \(indexPath.row)")
        let meal = newMeals[indexPath.row]
        
        if let mealDetailViewController = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController {
            mealDetailViewController.mealName = meal.meal_name
            mealDetailViewController.mealPrice = meal.price
            navigationController?.pushViewController(mealDetailViewController, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: menuCell, for: indexPath) as! MenuCell
        let meal = newMeals[indexPath.row]
    
        cell.mealNameLabel?.text = meal.meal_name
        cell.mealPriceLabel?.text = "$\(meal.price)"
        cell.shortDescription?.text = meal.details
        
        return cell
    }
}
