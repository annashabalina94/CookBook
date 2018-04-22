//
//  ViewController.swift
//  CookBook
//
//  Created by Anna Shabalina on 4/22/18.
//  Copyright © 2018 Anna Shabalina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let recipe = [
        Recipe(name: "Carrot Cake", fnetworkID: "Carrot Cake"),
        Recipe(name: "Chokolate Cake", fnetworkID: "Chokolate Cakes"),
        Recipe(name: "Bewitched Cake", fnetworkID: "Bewitched cake")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "recipeCell")
            else {
                return UITableViewCell()
        }
        
        let recipes = recipe[indexPath.row]
        cell.textLabel?.text = recipes.name
        cell.imageView?.image = recipes.image
        return cell
    }
}

extension ViewController: UITabBarDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected \(recipe[indexPath.row])")
    }
}

