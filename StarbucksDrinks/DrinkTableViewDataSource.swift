//
//  DrinkTableViewDataSource.swift
//  StarbucksDrinks
//
//  Created by Jacob MacFarland on 3/6/22.
//

import UIKit

class DrinkTableViewDataSource: NSObject, UITableViewDataSource {
    
    var drinkData: [String]
    
    init(withData drinkData: [String]) {
        self.drinkData = drinkData
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.drinkData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = self.drinkData[indexPath.row]
        return cell
    }
    
}
