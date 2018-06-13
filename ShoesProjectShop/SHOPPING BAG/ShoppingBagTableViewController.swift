//
//  ShoppingBagTableViewController.swift
//  Nike+Research
//
//  Created by Duc Tran on 3/19/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class ShoppingBagTableViewController: UITableViewController
{
    struct Storyboard {
        static let numberOfItemsCell = "numberOfItemsCell"      // cell 0
        static let itemCell = "itemCell"                        // cell 1
        static let cartDetailCell = "cartDetailCell"            // cell 2
        static let cartTotalCell = "cartTotalCell"              // cell 3
        static let checkoutButtonCell = "checkoutButtonCell"    // cell 4
    }
    
    var shoes: [Shoe]? = Shoe.shoes {
        didSet {
            for shoe in self.shoes! {
                self.totalPrice += shoe.price ?? 0
            }
        }
    }
    var totalPrice = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    override func viewWillAppear(_ animated: Bool) {
        shoes = Shoe.shoes
        tableView.reloadData()
    }
}

extension ShoppingBagTableViewController
{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let shoes = shoes {
            return shoes.count + 4
        } else {
            return 1
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        guard let shoes = shoes else {
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.numberOfItemsCell, for: indexPath) as! NumberOfItemsCell
            cell.numberOfItemsLabel.text = "\(0) ITEM"
            
            return cell
        }
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.numberOfItemsCell, for: indexPath) as! NumberOfItemsCell
            cell.numberOfItemsLabel.text = "\(shoes.count) ITEMS"
            return cell
        } else if indexPath.row == shoes.count + 1 {
            // cartDetailCell
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.cartDetailCell, for: indexPath) as! DetailOfItemCell
            cell.totalPriceLabel.text = "$\(totalPrice.rounded())"
            return cell
        } else if indexPath.row == shoes.count + 2 {
            // cartTotalCell
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.cartTotalCell, for: indexPath) as! TotalTableViewCell
            cell.totalPriceLabel.text = "$ \(totalPrice)"
            return cell
        } else if indexPath.row == shoes.count + 3 {
            // checkoutButtonCell
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.checkoutButtonCell, for: indexPath)
            
            return cell
        } else {
            // itemCell
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.itemCell, for: indexPath) as! ShoppingCartItemCell
            cell.shoe = shoes[indexPath.row - 1]
            return cell
        }
    }
}

class TotalTableViewCell: UITableViewCell {
    
    @IBOutlet weak var totalPriceLabel: UILabel!
}

class DetailOfItemCell: UITableViewCell {
    
    @IBOutlet weak var totalPriceLabel: UILabel!
}

class NumberOfItemsCell: UITableViewCell
{
    @IBOutlet weak var numberOfItemsLabel: UILabel!
}

class ShoppingCartItemCell : UITableViewCell
{
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var removeButton: UIButton!
    
    var shoe: Shoe! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI()
    {
        productImageView.image = shoe.images?.first
        productNameLabel.text = shoe.name
        productPriceLabel.text = "$\(shoe.price!)"
    }
    
    @IBAction func removeButtonDidTap(_ sender: Any) {
    }
}







