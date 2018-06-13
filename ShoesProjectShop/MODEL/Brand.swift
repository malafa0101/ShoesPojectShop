//
//  Brands.swift
//  Nike+Research
//
//  Created by Жанибек on 19.04.18.
//  Copyright © 2018 Developers Academy. All rights reserved.
//

import Foundation
import UIKit

class Brand {
    
    private var shopImageView:UIImage?
    private var brandsName:String?
    private var isCheked:Bool?
    private var labell:String?
    private var brandType: BrandType?
    
    private var colNameS:String?
    private var colPrice:String?
    private var colImageView:UIImage?
    
    init(_ shopImageView: UIImage, _ brandsName: String, _ isCheked: Bool, _ brandType: BrandType?){
        self.shopImageView = shopImageView
        self.brandsName = brandsName
        self.isCheked = isCheked
        self.brandType = brandType
    }
    
    init(_ colNameS:String,_ colPrice:String,colImageView:UIImage){
        self.colNameS = colNameS
        self.colPrice = colPrice
        self.colImageView = colImageView
    }
    
    var ColNameS:String{
        return colNameS!
    }
    var ColPrice:String{
        get{return colPrice!}
    }
    var ColImageView:UIImage{
        get{return colImageView!}
    }
    var Labell:String{
        get{return labell!}
    }
    var ShopImageView:UIImage{
        get{return shopImageView!}
    }
    var BrandsName: String{
        get{return brandsName!}
    }
    var IsCheked:Bool{
        return isCheked!
    }
    var BrandType: BrandType {
        return brandType!
    }
}
