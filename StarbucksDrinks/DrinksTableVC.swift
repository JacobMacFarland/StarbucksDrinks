//
//  ViewController.swift
//  StarbucksDrinks
//
//  Created by Jacob MacFarland on 3/6/22.
//

import UIKit

class DrinksTableVC: UITableViewController, DrinKVCDelegate {
    
    var drinkTableViewDelegate: DrinkTableViewDelegate?
    var drinkTableViewDataSource: DrinkTableViewDataSource?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.drinkTableViewDelegate = DrinkTableViewDelegate(withDelegate: self)
        self.drinkTableViewDataSource = DrinkTableViewDataSource(withData: StarbucksDrinkData.mainDrinkList)
        
        self.tableView.register(UINib(nibName: "DrinkTableViewCell", bundle: nil), forCellReuseIdentifier: "DrinkTableViewCell")
        
        self.tableView.delegate = self.drinkTableViewDelegate
        self.tableView.dataSource = self.drinkTableViewDataSource
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func selectedCell(row: Int) {
        print("Row: \(row)")
    }


}

