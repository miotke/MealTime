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
    var meals = [Meal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        self.navigationItem.title = "Menu"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        registerNib()
        
        parseMeals()
    }
    
    func registerNib() {
        let nib = UINib(nibName: "MenuCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: menuCell)
    }
    
    func parseMeals() {
        let url = Bundle.main.url(forResource:"JSONData", withExtension: "json")!
        let jsonData = try! Data(contentsOf: url)
        self.meals = try! JSONDecoder().decode([Meal].self, from: jsonData)
        
        self.tableView.reloadData()
    }
}

// MARK: - Table View
extension MealTimeViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.meals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: menuCell, for: indexPath) as! MenuCell
        let mealCellData = self.meals[indexPath.row]
        
        cell.mealNameLabel.text = mealCellData.meal_name
        cell.mealPriceLabel.text = mealCellData.price
        cell.shortDescription.text = mealCellData.details
        
        return cell
    }
}
