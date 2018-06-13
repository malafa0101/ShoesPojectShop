//
//  CollectionsViewController.swift
//  Nike+Research
//
//  Created by Жанибек on 22.04.18.
//  Copyright © 2018 Developers Academy. All rights reserved.
//

import UIKit

class CollectionsViewController: UIViewController {
    var colShoes: [GenderType : [Shoe]] = [
        .men:[],
        .women: []
    ]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var currentShoe: Shoe?
    
    var currentBrandType: BrandType!
    var currentGendreType: GenderType!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentGendreType = .men
        colShoes = sortByBrand()
        print(colShoes)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    @IBAction func selectedGendre(_ sender: UISegmentedControl) {
        
        currentGendreType = sender.selectedSegmentIndex == 0 ? .men : .women
        collectionView.reloadData()
    }
    
    private func sortByBrand () -> [GenderType : [Shoe]] {
        var list: [GenderType : [Shoe]] = [.men:[], .women:[]]
        
        for data in Data().getClothes() {
            print(data.value)
            for clothe in data.value {
                
                if clothe.brand == currentBrandType {
                    
                    list[data.key]?.append(clothe)
                }
            }
        }
        
        return list
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "collectionDetail"{
            if let detailController = segue.destination as? ShoeDetailTableViewController{
                if let shoe = currentShoe{
                    detailController.shoe = shoe
                }
            }
        }
    }



}

extension CollectionsViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colShoes[currentGendreType]!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CollectionCustomCell
        
        cell.imageShoes.image = colShoes[currentGendreType]![indexPath.row].images?[0]
        cell.nameShoes.text = colShoes[currentGendreType]![indexPath.row].name
        cell.priceShoes.text = String(describing: colShoes[currentGendreType]![indexPath.row].price)
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        currentShoe = colShoes[currentGendreType]![indexPath.row]
        performSegue(withIdentifier: "collectionDetail", sender: self)
    }
}
