//
//  Shoe.swift
//  Nike+Research
//
//  Created by Duc Tran on 3/19/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class Shoe
{
    var uid: String?
    var name: String?
    var images: [UIImage]?
    var price: Double?
    var description: String?
    var detail: String?
    var brand: BrandType?
    
    init(uid: String, name: String, images: [UIImage], price: Double, description: String, detail: String, brand: BrandType)
    {
        self.uid = uid
        self.name = name
        self.images = images
        self.price = price
        self.description = description
        self.detail = detail
        self.brand = brand
    }
    
    class func fetchShoes() -> [Shoe]
    {
        var shoes = [Shoe]()
        
        // 1
        var shoe1Images = [UIImage]()
        for i in 1...5 {
            shoe1Images.append(UIImage(named: "s\(i)")!)
        }
        let shoe1 = Shoe(uid: "875942-100", name: "NIKE AIR MAX 1 ULTRA 2.0 FLYKNIT", images: shoe1Images, price: 180, description: "LIGHTER THAN EVER! The Nike Air Max 1 Ultra 2.0 Flyknit Men's Shoe updates the iconic original with an ultra-lightweight upper while keeping the plush, time-tested Max Air cushioning.", detail: "LIGHTER THAN EVER! The Nike Air Max 1 Ultra 2.0 Flyknit Men's Shoe updates the iconic original with an ultra-lightweight upper while keeping the plush, time-tested Max Air cushioning.", brand: .Nike)
        shoes.append(shoe1)
        
        // 2
        var shoe2Images = [UIImage]()
        for i in 1...5 {
            shoe2Images.append(UIImage(named: "re\(i)")!)
        }
        let shoe2 = Shoe(uid: "880843-003", name: "NANO 8 FLEXWEAVE", images: shoe2Images, price: 120, description: "Since 2010, Reebok and CrossFit® athletes have forged the Nano through sweat, testing, re-designing and re-testing to create the most versatile and dependable CrossFit® shoe on the market. As the limits of physical capacity are pushed further every year, Reebok continues to innovate the Nano to meet the increasing demands of some of the world’s fittest athletes. No shoe has done more box jumps, DU’s, cleans and WOD’s. The Reebok CrossFit® Nano 8 Flexweave™ implements Reebok’s latest upper technology innovation – Flexweve™. Flexweave™ is a fully engineered woven technology providing enhanced breathability, flexibility and durability. This new feature and an updated bootie construction within the shoe to provide unmatched comfort.", detail: "sss", brand: .Reebok)
        shoes.append(shoe2)
        
        
        // 3
        var shoe3Images = [UIImage]()
        for i in 1...6 {
            shoe3Images.append(UIImage(named: "j\(i)")!)
        }
        let shoe3 = Shoe(uid: "384664-113", name: "AIR JORDAN 6 RETRO", images: shoe3Images, price: 190, description: "The Air Jordan 6 Retro Men's Shoe celebrates a championship heritage with design lines and plush cushioning inspired by the ground-breaking hoops original.", detail: "The Air Jordan 6 Retro Men's Shoe celebrates a championship heritage with design lines and plush cushioning inspired by the ground-breaking hoops original.", brand: .Jordan)
        shoes.append(shoe3)
        
        // 4
        var shoe4Images = [UIImage]()
        for i in 1...4 {
            shoe4Images.append(UIImage(named: "b\(i)")!)
        }
        let shoe4 = Shoe(uid: "805144-852", name: "UA Zone 3", images: shoe4Images, price: 130, description: "Sneakers Under Armor UA Zone 3 are made of mesh textile with overlays for extra strength and lateral support. Details: EVA insole for cushioning and comfort; Solid rubber outsole provides an ideal balance of traction and durability.", detail: "The Nike Sportswear Tech Fleece Windrunner Men's Hoodie is redesigned for cooler weather with smooth, engineered fleece that offers lightweight warmth. Bonded seams lend a modern update to the classic chevron design.", brand: .UnderArmor)
        shoes.append(shoe4)
        
        return shoes
    }
    
    static var shoes: [Shoe] = []
    
    func toJSONFormat() -> Any{
        return ["uid": uid]
    }
}

























