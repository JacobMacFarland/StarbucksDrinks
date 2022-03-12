//
//  DrinkTableViewDataSource.swift
//  StarbucksDrinks
//
//  Created by Jacob MacFarland on 3/6/22.
//

import UIKit

class DrinkTableViewDataSource: NSObject, UITableViewDataSource {
    
    var drinkData: [(String, [String])]
    
    init(withData drinkData: [(String, [String])]) {
        self.drinkData = drinkData
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.drinkData[section].1.count
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return drinkData.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return drinkData[section].0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DrinkTableViewCell") as? DrinkTableViewCell

        cell?.drinkTitle?.text = self.drinkData[indexPath.section].1[indexPath.row]
        cell?.drinkImage?.image = UIImage(named: self.drinkData[indexPath.section].1[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
}
