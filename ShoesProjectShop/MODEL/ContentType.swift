//
//  ContentType.swift
//  Nike+Research
//
//  Created by Жанибек on 19.04.18.
//  Copyright © 2018 Developers Academy. All rights reserved.
//

import Foundation
import UIKit

enum ContentType: String {
    case all
    case shoes
    case tShirts
    case bag
    case sports
    case hoody
}

enum GenderType{
    case men
    case women
}

enum BrandType {
    case Nike
    case Reebok
    case Puma
    case Jordan
    case UnderArmor
}

prefix func ! (value: ContentType) -> ContentType {
    switch value {
    case .all:
        return .all
    case .shoes:
        return .shoes
    case .tShirts:
        return .tShirts
    case .bag:
        return .bag
    case .sports:
        return .sports
    case .hoody:
        return .hoody
    }
    

}
