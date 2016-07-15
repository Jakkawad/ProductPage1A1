//
//  Model.swift
//  ProductPage1A1
//
//  Created by admin on 7/13/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class Product {
    var name:String
    var imageURL:String
    var productDescription:String
    
    /*
    var productId:String
    
    func getProductId() {
        func test() {
            let omdbAPI = "http://rest.all2sale.com/ios/id.php?api=getallid&limit=8&orderrand=yes"
            let URL = NSURL(string: omdbAPI)!
            
            Alamofire.request(.GET, URL).responseJSON() { response in
                guard let dataValue = response.result.value else { return }
                let json = JSON(dataValue)
                //self.productId = json["Id_0"].stringValue
                print(json)
            }
        }

    }
    */
    func updateImageURL() {
        let parameters:[String:AnyObject] = [
        "t":name
        ]
        
        //let omdbAPI = "http://rest.all2sale.com/y.php?="
        let omdbAPI = "http://rest.all2sale.com/y.php"
        let URL = NSURL(string: omdbAPI)!
        let URLRequest = NSMutableURLRequest(URL: URL)
        URLRequest.HTTPMethod = "GET"
        
        Alamofire.request(.GET, URL, parameters: parameters).responseJSON() { response in
            guard let dataValue = response.result.value else { return }
            let json = JSON(dataValue)
            self.name = json["Title"].stringValue
            self.imageURL = json["Poster"].stringValue
            self.productDescription = json["Plot"].stringValue
            //print(json)
            /*
            let json = JSON(dataValue)
            self.imageURL = json["Poster"].stringValue
            self.name = json["Title"].stringValue
            self.movieDescription = json["Plot"].stringValue
            */
        }

        
    }
    
    init(name: String) {
        self.name = name
        self.imageURL = ""
        self.productDescription = ""
        //self.productId = ""
        //getProductId()
        updateImageURL()
    }
}
