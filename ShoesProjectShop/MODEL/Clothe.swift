//
//  Clothes.swift
//  Nike+Research
//
//  Created by Жанибек on 21.04.18.
//  Copyright © 2018 Developers Academy. All rights reserved.
//

import Foundation
import UIKit

class Clothe {
    
    var name: String?
    var price: String?
    var image: UIImage?
    var type: ContentType?
    var description: String?
    var detail: String?
    var brand: BrandType?
    
    var uid: String?
    var images: [UIImage]?
    var priceDouble: Double?
    
    init(uid: String, name: String, images: [UIImage], price: Double, description: String, detail: String)
    {
        self.uid = uid
        self.name = name
        self.images = images
        self.priceDouble = price
        self.description = description
        self.detail = detail
    }
    
    init(_ name:String,_ price:String,_ image:UIImage,_ type:ContentType, description: String?, detail: String?, brand: BrandType){
        self.name = name
        self.price = price
        self.image = image
        self.type = type
        self.description = description
        self.detail = detail
        self.brand = brand
    }
    
    var Name : String{
        get{return name!}
    }
    var Price : String{
        get{return price!}
    }
    var Image:UIImage{
        get{return image!}
    }
    var Types:ContentType{
        get{return type!}
    }
    var Brand: BrandType {
        return brand!
    }
}
