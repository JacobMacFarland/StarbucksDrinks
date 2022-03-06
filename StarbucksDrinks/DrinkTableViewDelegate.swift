//
//  DrinkTableViewDelegate.swift
//  StarbucksDrinks
//
//  Created by Jacob MacFarland on 3/6/22.
//

import UIKit

class DrinkTableViewDelegate: NSObject, UITableViewDelegate {
    
    weak var delegate: DrinKVCDelegate?
    
    init(withDelegate delegate: DrinKVCDelegate) {
        self.delegate = delegate
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.delegate?.selectedCell(row: indexPath.row)
    }
    
}
