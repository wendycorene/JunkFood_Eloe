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
        foods.append(popcorn)
        foods.append(coke)
        foods.append(crisps)
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
        for var i in foods {
            i.tally = 0
        }
    }
}
