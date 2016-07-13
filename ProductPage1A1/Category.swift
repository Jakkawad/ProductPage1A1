//
//  Category.swift
//  ProductPage1A1
//
//  Created by admin on 7/13/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import Foundation

class Category {
    static let sharedInstance = Category()
    let genres:[Genre]
    
    init() {
        // category 1
        let cat1A = Product(name: "37")
        let cat1B = Product(name: "37")
        let cat1C = Product(name: "37")
        let cat1D = Product(name: "37")
        let cat1F = Product(name: "37")
        let cat1G = Product(name: "37")
        let cat1S = Product(name: "37")
        let cat1H = Product(name: "37")
        
        let category1 = Genre(name: "Category 1", products: [cat1A, cat1B, cat1C, cat1D, cat1F, cat1G, cat1S, cat1H])
        
        // category 2
        let cat2A = Product(name: "37")
        let cat2B = Product(name: "37")
        let cat2C = Product(name: "37")
        let cat2D = Product(name: "37")
        let cat2F = Product(name: "37")
        let cat2G = Product(name: "37")
        let cat2S = Product(name: "37")
        let cat2H = Product(name: "37")
        
        let categoty2 = Genre(name: "Category 2", products: [cat2A, cat2B, cat2C, cat2D, cat2F, cat2G, cat2S, cat2H])
        
        // category 3
        let cat3A = Product(name: "37")
        let cat3B = Product(name: "37")
        let cat3C = Product(name: "37")
        let cat3D = Product(name: "37")
        let cat3F = Product(name: "37")
        let cat3G = Product(name: "37")
        let cat3S = Product(name: "37")
        let cat3H = Product(name: "37")
        
        let category3 = Genre(name: "Category 3", products: [cat3A, cat3B, cat3C, cat3D, cat3F, cat3G, cat3S, cat3H])
        
        genres = [category1, categoty2, category3]
    }
}