//
//  BuyButtonCell.swift
//  Nike+Research
//
//  Created by Жанибек on 23.04.18.
//  Copyright © 2018 Developers Academy. All rights reserved.
//

import UIKit


class BuyButtonCell: UITableViewCell {

    var shoe: Shoe?
    
    @IBOutlet weak var buyButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func buyPressed(_ sender: UIButton) {
        if let shoe = shoe{
            
            Shoe.shoes.append(shoe)
        }
    }
    
}
