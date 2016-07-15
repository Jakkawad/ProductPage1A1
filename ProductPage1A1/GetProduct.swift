//
//  GetProduct.swift
//  ProductPage1A1
//
//  Created by admin on 7/15/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class GetProduct {
    var id0:String
    var id1:String
    var id2:String
    var id3:String
    var id4:String
    var id5:String
    var id6:String
    var id7:String
    
    func test() {
        let omdbAPI = "http://rest.all2sale.com/ios/id.php?api=getallid&limit=8&orderrand=yes"
        let URL = NSURL(string: omdbAPI)!
        
        Alamofire.request(.GET, URL).responseJSON() { response in
            guard let dataValue = response.result.value else { return }
            let json = JSON(dataValue)
            self.id0 = json["Id_0"].stringValue
            self.id1 = json["Id_1"].stringValue
            self.id2 = json["Id_2"].stringValue
            self.id3 = json["Id_3"].stringValue
            self.id4 = json["Id_4"].stringValue
            self.id5 = json["Id_5"].stringValue
            self.id6 = json["Id_6"].stringValue
            self.id7 = json["Id_7"].stringValue
            
            //print(self.id0)
            
        }
        
        
    }
    
    init(id0: String) {
        self.id0 = "37"
        self.id1 = ""
        self.id2 = ""
        self.id3 = ""
        self.id4 = ""
        self.id5 = ""
        self.id6 = ""
        self.id7 = ""
        test()
    }
}