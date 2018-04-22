//
//  Recipe.swift
//  CookBook
//
//  Created by Anna Shabalina on 4/22/18.
//  Copyright © 2018 Anna Shabalina. All rights reserved.
//

import Foundation
import UIKit

struct Recipe{
    let name: String
    let fnetworkID: String
    var image: UIImage?
    
    init(name: String, fnetworkID: String) {
        self.name = name
        self.fnetworkID = fnetworkID
        image = UIImage(named: fnetworkID)
    }
}

extension Recipe: CustomStringConvertible {
    var description: String {
        return "\(name): foodnetwork.com/\(fnetworkID)"
    }
}
