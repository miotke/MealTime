//
//  MealData.swift
//  iOS
//
//  Created by Andrew Miotke on 12/15/19.
//  Copyright © 2019 andrewmiotke. All rights reserved.
//

import Foundation

struct MealResponse: Decodable {
    var response: Meals
}

struct Meals: Decodable {
    var meals: [MealDetail]
}

struct MealDetail: Decodable {
    var meal_name: String
    var details: String
    var sides: String
    var price: String
}
