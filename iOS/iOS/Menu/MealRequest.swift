//
//  MealRequest.swift
//  iOS
//
//  Created by Andrew Miotke on 12/15/19.
//  Copyright © 2019 andrewmiotke. All rights reserved.
//

import Foundation

//enum MealError: Error {
//    case noDataAvailable
//    case canNotProcessData
//}
//
//struct MealRequest {
//    
//    let resourceURL: URL
//    let API_KEY = ""
//    
//    init() {
//        let resourceString = "https://afternoon-stream-26309.herokuapp.com/meals/"
//        guard let resourceURL = URL(string: resourceString) else {fatalError()}
//        self.resourceURL = resourceURL
//    }
//    
//    func getMeal (completion: @escaping(Result<[Meal], MealError>) -> Void) {
//        let dataTask = URLSession.shared.dataTask(with: resourceURL) {data, _,_ in
//            guard let jsonData = data else {
//                completion(.failure(.noDataAvailable))
//                return
//            }
//            
//            do {
//                let decoder = JSONDecoder()
//                let mealResponse = try decoder.decode(Meals.self, from: jsonData)
//                let mealDetails = mealResponse.meals
//                print("Hello \(mealDetails)")
//                completion(.success(mealDetails))
//            } catch {
//                completion(.failure(.canNotProcessData))
//            }
//        }
//        dataTask.resume()
//    }
//}
