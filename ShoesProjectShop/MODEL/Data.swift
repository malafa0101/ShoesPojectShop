//
//  Data.swift
//  Nike+Research
//
//  Created by Жанибек on 22.04.18.
//  Copyright © 2018 Developers Academy. All rights reserved.
//

import Foundation
import UIKit

class Data {
    
    public func getClothes () -> [GenderType : [Shoe]] {
        // shoes for men
        var shoe1Images = [UIImage]()
        for i in 1...8 {
            shoe1Images.append(UIImage(named: "s\(i)")!)
        }
        let shoe1 = Shoe(uid: "875942-100", name: "NIKE AIR MAX 1 ULTRA 2.0 FLYKNIT", images: shoe1Images, price: 180, description: "LIGHTER THAN EVER! The Nike Air Max 1 Ultra 2.0 Flyknit Men's Shoe updates the iconic original with an ultra-lightweight upper while keeping the plush, time-tested Max Air cushioning.", detail: "LIGHTER THAN EVER! The Nike Air Max 1 Ultra 2.0 Flyknit Men's Shoe updates the iconic original with an ultra-lightweight upper while keeping the plush, time-tested Max Air cushioning.", brand: .Nike)
        
        
        // shoes for women
        var shoe2Images = [UIImage]()
        for i in 1...5 {
            shoe2Images.append(UIImage(named: "b\(i)")!)
        }
        let shoe2 = Shoe(uid: "880843-003", name: "NIKE FREE RN FLYKNIT 2017", images: shoe2Images, price: 125, description: "The Nike Free RN Flyknit 2017 Men's Running Shoe brings you miles of comfort with an exceptionally flexible outsole for the ultimate natural ride. Flyknit fabric wraps your foot for a snug, supportive fit while a tri-star outsole expands and flexes to let your foot move naturally.", detail: "The Nike Free RN Flyknit 2017 Men's Running Shoe brings you miles of comfort with an exceptionally flexible outsole for the ultimate natural ride. Flyknit fabric wraps your foot for a snug, supportive fit while a tri-star outsole expands and flexes to let your foot move naturally.", brand: .Nike)
        
        //3
        var shoe3Images = [UIImage]()
        for i in 1...5 {
            shoe3Images.append(UIImage(named: "ua\(i)")!)
        }
        let shoe3 = Shoe(uid: "880843-003", name: "UA Post Canyon Low", images: shoe3Images, price: 99, description: "Sneakers Under Armor has a dense patterned fabric top with suede trim for lightness and durability. Rubber sock with protection from scratches and a heel pad for enhanced protection in the most difficult terrain. Lightweight midsole EVA for optimal cushioning. Built-in EES plate for protection against penetration. Rubber outsole for increased terrain to ensure perfect grip when driving through a wide variety of terrain.", detail: "Sneakers Under Armor has a dense patterned fabric top with suede trim for lightness and durability. Rubber sock with protection from scratches and a heel pad for enhanced protection in the most difficult terrain. Lightweight midsole EVA for optimal cushioning. Built-in EES plate for protection against penetration. Rubber outsole for increased terrain to ensure perfect grip when driving through a wide variety of terrain.", brand: .UnderArmor)
        //4
        var shoe4Images = [UIImage]()
        for i in 1...4 {
            shoe4Images.append(UIImage(named: "ub\(i)")!)
        }
        let shoe4 = Shoe(uid: "880843-003", name: "UA Zone 3", images: shoe4Images, price: 111, description: "Sneakers Under Armor UA Zone 3 are made of mesh textile with overlays for extra strength and lateral support. Details: EVA insole for cushioning and comfort; Solid rubber outsole provides an ideal balance of traction and durability.", detail: "Sneakers Under Armor UA Zone 3 are made of  mesh textile with overlays for extra strength and lateral support. Details: EVA insole for cushioning and comfort; Solid rubber outsole provides an ideal balance of traction and durability.", brand: .UnderArmor)
        //5
        var shoe5Images = [UIImage]()
        for i in 1...5 {
            shoe5Images.append(UIImage(named: "uc\(i)")!)
        }
        let shoe5 = Shoe(uid: "880843-003", name: "UA Speedform Gemini Vent", images: shoe5Images, price: 130, description: "Sneakers Under Armor Speedform Gemini Vent are made of textiles with seamless polymer pads, providing the necessary stability. The insole creates an additional cushioning pillow. A single rubber outsole provides traction in different directions, which improves movement.", detail: "Sneakers Under Armor Speedform Gemini Vent are made of  textiles with seamless polymer pads, providing the necessary stability. The insole creates an additional cushioning pillow. A single rubber outsole provides traction in different directions, which improves movement.", brand: .UnderArmor)
        
        
        //6
        var shoe6Images = [UIImage]()
        for i in 1...5 {
            shoe6Images.append(UIImage(named: "ud\(i)")!)
        }
        let shoe6 = Shoe(uid: "880843-003", name: "UA Surge", images: shoe6Images, price: 155, description: "Sneakers sports brand Under Armor UA Surge are made of artificial leather and textiles. The EVA midsole absorbs the shock load. Details: clasp for lacing, interior trim and insole of textile, decorative element in the form of a brand logo.", detail: "Sneakers sports brand Under Armor UA Surge are made of artificial leather and textiles. The EVA midsole absorbs the shock load. Details: clasp for lacing, interior trim and insole of textile, decorative element in the form of a brand logo.", brand: .UnderArmor)
        //7
        
        var shoe7Images = [UIImage]()
            for i in 1...6 {
                shoe7Images.append(UIImage(named: "re\(i)")!)
            }
         let shoe7 = Shoe(uid: "880843-003", name: "NANO 8 FLEXWEAVE", images: shoe7Images, price: 130, description: "Since 2010, Reebok and CrossFit® athletes have forged the Nano through sweat, testing, re-designing and re-testing to create the most versatile and dependable CrossFit® shoe on the market. As the limits of physical capacity are pushed further every year, Reebok continues to innovate the Nano to meet the increasing demands of some of the world’s fittest athletes. No shoe has done more box jumps, DU’s, cleans and WOD’s. The Reebok CrossFit® Nano 8 Flexweave™ implements Reebok’s latest upper technology innovation – Flexweve™. Flexweave™ is a fully engineered woven technology providing enhanced breathability, flexibility and durability. This new feature and an updated bootie construction within the shoe to provide unmatched comfort.", detail: "sss", brand: .Reebok)
        
        //8
        var shoe8Images = [UIImage]()
        for i in 1...6 {
            shoe8Images.append(UIImage(named: "re\(i)")!)
        }
        let shoe8 = Shoe(uid: "880843-003", name: "NANO 8 FLEXWEAVE", images: shoe8Images, price: 130, description: "Since 2010, Reebok and CrossFit® athletes have forged the Nano through sweat, testing, re-designing and re-testing to create the most versatile and dependable CrossFit® shoe on the market. As the limits of physical capacity are pushed further every year, Reebok continues to innovate the Nano to meet the increasing demands of some of the world’s fittest athletes. No shoe has done more box jumps, DU’s, cleans and WOD’s. The Reebok CrossFit® Nano 8 Flexweave™ implements Reebok’s latest upper technology innovation – Flexweve™. Flexweave™ is a fully engineered woven technology providing enhanced breathability, flexibility and durability. This new feature and an updated bootie construction within the shoe to provide unmatched comfort.", detail: "sss", brand: .UnderArmor)
        
        
        let data: [GenderType : [Shoe]] = [
            .men : [
                shoe1,shoe3,shoe4,shoe5,shoe6,shoe7
            ],
            .women : [
                shoe2,shoe8,shoe8,shoe4,shoe5
            ]
        ]
        return data
    }
}
