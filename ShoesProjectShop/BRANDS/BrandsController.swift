//
//  BrandsController.swift
//  Nike+Research
//
//  Created by Жанибек on 22.04.18.
//  Copyright © 2018 Developers Academy. All rights reserved.
//
import UIKit


extension ShopsViewController: AddToFavouriteDelegate{
    
    
    func addToFavourite(toAdd: Bool, brand: Brand, indexPath: IndexPath) {
        if toAdd{
            brandsFavoutire.append(brand)
        }
        else{
            let name = brand.BrandsName
            var count = 0
            for item in brandsFavoutire{
                if item.BrandsName == name{
                    brandsFavoutire.remove(at: count)
                }
                count += 1
            }
            
        }
    }
    
    
    
    
}

class ShopsViewController: UIViewController,UITableViewDelegate, UITableViewDataSource{
    
    var brands:[Brand] = [Brand.init(#imageLiteral(resourceName: "brandsRbk"), "Reebok", false,.Reebok),Brand.init(#imageLiteral(resourceName: "111a"), "Nike", false, .Nike),
                          Brand.init(#imageLiteral(resourceName: "222a"), "Jordan", false, .Jordan),Brand.init(#imageLiteral(resourceName: "333a"), "Under Armor", false, .UnderArmor)]
    
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var brandsSegment: UISegmentedControl!
    
    var currentType: BrandType?
   
    var brandsFavoutire:[Brand] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        currentType = nil
    }
    
    
    
    // MARK: - Table view data source
    
    @IBAction func brandsSegmentAction(_ sender: UISegmentedControl) {
        
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch brandsSegment.selectedSegmentIndex {
        case 0:
            return brands.count
        case 1:
            for brand in brands{
                
            }
            return brandsFavoutire.count
        default:
            return 0
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! BrandTableViewCell
        if brandsSegment.selectedSegmentIndex == 0{
        //cell.imageView?.image = brands[indexPath.row].ShopImageView
        //cell.brandsLabel.text = brands[indexPath.row].BrandsName
            cell.brand = brands[indexPath.row]
            cell.addToFavouriteDelegate = self
            cell.indexPath = indexPath
            cell.plusButton.isHidden = false
        }
        else if brandsSegment.selectedSegmentIndex == 1{
            cell.brand = brandsFavoutire[indexPath.row]
            cell.addToFavouriteDelegate = self
            cell.indexPath = indexPath
            cell.plusButton.isHidden = true
        }
        
        
        return cell
    }
   
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if brandsSegment.selectedSegmentIndex == 0{
            currentType = brands[indexPath.row].BrandType
        }
        if brandsSegment.selectedSegmentIndex == 1{
            currentType = brandsFavoutire[indexPath.row].BrandType
        }
        performSegue(withIdentifier: "showDetail", sender: self)
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail"{
            if let detailController = segue.destination as? CollectionsViewController{
                if let type = currentType{
                    detailController.currentBrandType = type
                }
            }
        }
    }
    
    
}

