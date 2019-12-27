//
//  MealData.swift
//  iOS
//
//  Created by Andrew Miotke on 12/15/19.
//  Copyright © 2019 andrewmiotke. All rights reserved.
//

import Foundation

//struct Meals: Codable {
//    var meal: [Meal]
//}

//struct Meals: Decodable, Hashable {
//    var meal: [Meal]
//}

//struct Meal: Decodable, Hashable, Encodable {
//    let meal_name: String
//    let details: String
//    let sides: String
//    let price: String
//}


struct Meal: Codable {
    let meal_name: String
    let details: String
    let sides: String
    let price: String
}
