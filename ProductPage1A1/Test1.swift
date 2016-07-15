//
//  Test1.swift
//  ProductPage1A1
//
//  Created by admin on 7/15/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class Car {
    var name:String
    var description:String
    
    func getCar() {
        Alamofire.request(.GET, "http://rest.all2sale.com/y.php?t=37").responseJSON() { response in
            guard let dataValue = response.result.value else { return }
            let json = JSON(dataValue)
            self.name = json["Title"].stringValue
            self.description = json["Plot"].stringValue
            print(json)
        }
    }
    init() {
        self.name = ""
        self.description = ""
        getCar()
    }
}
