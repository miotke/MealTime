//
//  MealData.swift
//  iOS
//
//  Created by Andrew Miotke on 12/15/19.
//  Copyright © 2019 andrewmiotke. All rights reserved.
//

import Foundation

struct Meal: Codable {
    let meal_name: String
    let details: String
    let sides: String
    let price: String
    let rating: String
    let emoji: String
}
