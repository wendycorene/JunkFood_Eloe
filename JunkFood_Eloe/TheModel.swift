//
//  TheModel.swift
//  JunkFood_Eloe
//
//  Created by Eloe,Wendy C on 3/6/18.
//  Copyright © 2018 Eloe,Wendy C. All rights reserved.
//

import Foundation

struct FoodData {
    var name: String
    var calories: Double
    var tally: Int
}

class FoodRecorder {
    var foods: [FoodData]
    
    init () {
        self.foods = []
    }

    func loadData() {
        let popcorn = FoodData(name: "Popcorn", calories: 106, tally: 0)
        let coke = FoodData(name: "Coca-Cola", calories: 140, tally: 0)
        let crisps = FoodData(name: "Potato Chips", calories: 152, tally: 0)
        let tissues = FoodData(name: "Box of Tissues", calories: 420, tally: 0)
        let glue = FoodData(name: "Bottle of Glue", calories: 144, tally: 0)
        foods.append(popcorn)
        foods.append(coke)
        foods.append(crisps)
        foods.append(tissues)
        foods.append(glue)
    }
    
    func increaseTally(forItem i: Int) {
        foods[i].tally += 1
    }
    
    func getCalories(forItem i: Int) -> Double {
        return (foods[i].calories * Double(foods[i].tally))
    }
    
    func report(forItem i: Int) -> String {
        return "The calories consumed for \(foods[i].name) is \(getCalories(forItem: i))."
    }
    
    func totalCalories () -> Double {
        var calorieSum = 0.0
        var j = 0
        for _ in foods {
            calorieSum += getCalories(forItem: j)
            j += 1
        }
        return calorieSum
    }
    
    func combinedReport () -> String {
        var combined = ""
        var j = 0
        for _ in foods {
            combined += report(forItem: j) + "\n"
            j += 1
        }
        return "\(combined) \nTotal calories consumed: \(totalCalories())"
    }
    
    func reset () {
        var j = 0
        for i in foods {
            foods[j].tally = 0
            j += 1
        }
    }
    
    func addFoodItem(name: String, calories: Double) {
        let newFood = FoodData(name: name, calories: calories, tally: 0)
        foods.append(newFood)
    }
    
}
