//
//  DrinkTableViewCell.swift
//  StarbucksDrinks
//
//  Created by Jacob MacFarland on 3/6/22.
//

import UIKit

class DrinkTableViewCell: UITableViewCell {
    @IBOutlet var drinkImage: UIImageView!
    @IBOutlet var drinkTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.drinkImage.layer.cornerRadius = self.drinkImage.frame.size.height / 2
        self.drinkImage.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
