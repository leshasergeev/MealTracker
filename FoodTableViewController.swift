//
//  FoodTableViewController.swift
//  MealTracker
//
//  Created by Алексей Сергеев on 13.04.2021.
//  Copyright © 2021 Алексей Сергеев. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals[section].food.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)

        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        
        cell.textLabel?.text = "\(food.name)"
        cell.detailTextLabel?.text = "\(food.description)"

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return meals[section].name
    }
    
    var meals: [Meal] {
        let firstBreakfastFood = Food(name: "Eggs", description: "Scrambled with bacon in a frying pan.")
        let secondBreakfastFood = Food(name: "Hashbrowns", description: "Cut potatoes then fry in oil until brown")
        let thirdBreakfastFood = Food(name: "Bacon", description: "Key food in all breakfast meals.")
        let breakfast = Meal(name: "Breakfast", food: [firstBreakfastFood, secondBreakfastFood, thirdBreakfastFood])
        
        let firstLunchFood = Food(name: "Sandwich", description: "Easy to fix. Always delicious")
        let secondLunchFood = Food(name: "Chips", description: "Put a few in the sandwhich for enhanced flavor")
        let thirdLunchFood = Food(name: "Apple", description: "An apple a day keeps the doctor away.")
        let lunch = Meal(name: "Lunch", food: [firstLunchFood, secondLunchFood, thirdLunchFood])
        
        let firstDinnerFood = Food(name: "Steak", description: "Everyone needs some good protein.")
        let secondDinnerFood = Food(name: "Potatoes", description: "Great addition to go along with steak.")
        let thirdDinnerFood = Food(name: "Brocolli", description: "Always finish out the food pyramid.")
        let dinner = Meal(name: "Dinner", food: [firstDinnerFood, secondDinnerFood, thirdDinnerFood])
        
        return [breakfast, lunch, dinner]
    }
    
}
