//
//  ViewController.swift
//  iOS
//
//  Created by Andrew Miotke on 12/9/19.
//  Copyright © 2019 andrewmiotke. All rights reserved.
//

import UIKit

class MealTimeViewController: UIViewController {

    var mealData = [Meal]()
    
    @IBOutlet weak var tableView: UITableView!
      
    let menuCell = "menuCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        self.navigationItem.title = "Menu"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        registerNib()
        
        print(mealData)
    
    }
    
    func registerNib() {
        let nib = UINib(nibName: "MenuCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: menuCell)
    }
    
    func loadJSON(filename fileName: String) -> [Meal]? {
        if let url = Bundle.main.url(forResource: "JSONData", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(Meals.self, from: data)
                return jsonData.meal
            } catch {
                print("Error")
            }
        }
        return nil
    }
}

// MARK: - Table View
extension MealTimeViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return mealData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: menuCell, for: indexPath) as! MenuCell
        let meal = mealData.self[indexPath.row]
        
        cell.mealNameLabel?.text = meal.mealName
        
        return cell
    }
}
