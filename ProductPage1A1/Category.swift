//
//  Category.swift
//  ProductPage1A1
//
//  Created by admin on 7/13/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class Category {
    static let sharedInstance = Category()
    let genres:[Genre]
    let getProduct = GetProduct()
    //let getProduct = GetProduct()
    //let getProduct:[GetProduct]? = nil
    
    /*
    var productId:String
    
    func test() {
        let omdbAPI = "http://rest.all2sale.com/ios/id.php?api=getallid&limit=8&orderrand=yes"
        let URL = NSURL(string: omdbAPI)!
        
        Alamofire.request(.GET, URL).responseJSON() { response in
            guard let dataValue = response.result.value else { return }
            let json = JSON(dataValue)
            self.productId = json["Id_0"].stringValue
            print(json)
            
        }
        
        
    }
     
    */
    
    init() {
        /*
        for productId in arrayA {
            print("ID = \(productId)")
            
        }
        */
        //getProduct.productId = ""
        // category 1
        let cat1A = Product(name: getProduct.id0)
        print(getProduct.id0)
        let cat1B = Product(name: "37")
        let cat1C = Product(name: "37")
        
        
        let category1 = Genre(name: "Category 1", products: [cat1A, cat1B, cat1C])
        
        // category 2
        let cat2A = Product(name: "37")
        let cat2B = Product(name: "37")
        let cat2C = Product(name: "37")
        
        
        let categoty2 = Genre(name: "Category 2", products: [cat2A, cat2B, cat2C])
        
        // category 3
        let cat3A = Product(name: "37")
        let cat3B = Product(name: "37")
        let cat3C = Product(name: "37")
        
        let category3 = Genre(name: "Category 3", products: [cat3A, cat3B, cat3C])
        
        genres = [category1, categoty2, category3]
        
        
        /*
        let a1 = Product(name: "37")
        let category1 = Genre(name: "NAME", products: [a1])
        genres = [category1]
        */
        //self.productId = ""
        //test()
    }
}