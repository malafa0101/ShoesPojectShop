//
//  BrandTableViewCell.swift
//  Nike+Research
//
//  Created by Жанибек on 22.04.18.
//  Copyright © 2018 Developers Academy. All rights reserved.
//

import UIKit

protocol AddToFavouriteDelegate {
    func addToFavourite(toAdd: Bool, brand: Brand, indexPath: IndexPath)
}

class BrandTableViewCell: UITableViewCell {
    var indexPath: IndexPath?
    var brand: Brand?{
        didSet{
            if let brand = brand{
                brandImageView.image = brand.ShopImageView
                brandLabel.text = brand.BrandsName
            }
        }
    }
    var addToFavouriteDelegate: AddToFavouriteDelegate?
    @IBOutlet weak var brandImageView: UIImageView!
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func addPressed(_ sender: UIButton) {
        print(123)
        
        if sender.currentImage == UIImage.init(named: "plus"){
            plusButton.setImage(UIImage.init(named: "check"), for: .normal)
            addToFavouriteDelegate?.addToFavourite(toAdd: true, brand: brand!, indexPath: indexPath!)
            print("plus")
        }
        else if sender.currentImage == UIImage.init(named: "check"){
            plusButton.setImage(UIImage.init(named: "plus"), for: .normal)
            addToFavouriteDelegate?.addToFavourite(toAdd: false, brand: brand!, indexPath: indexPath!)
            print("check")
        }
        
    }
}
