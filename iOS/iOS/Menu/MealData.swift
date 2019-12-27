//
//  MealData.swift
//  iOS
//
//  Created by Andrew Miotke on 12/15/19.
//  Copyright © 2019 andrewmiotke. All rights reserved.
//

import Foundation

struct Meals: Decodable, Hashable {
    let meal: [Meal]
}

struct Meal: Decodable, Hashable {
    let mealName: String
    let details: String
    let sides: String
    let price: String
}

//struct MealResponse: Decodable {
////    var response: Meals
//}
//
//struct Meals: Decodable {
////    var response: Meals
//    var meals: [Meal]
//}
//
//struct Meal: Decodable {
//    var meal_name: String
//    var details: String
//    var sides: String
//    var price: String
//}
