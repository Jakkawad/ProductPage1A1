//
//  Genre.swift
//  ProductPage1A1
//
//  Created by admin on 7/13/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import Foundation

class Genre {
    let name:String
    let products:[Product]
    
    init(name: String, products: [Product]) {
        self.name = name
        self.products = products
    }
}