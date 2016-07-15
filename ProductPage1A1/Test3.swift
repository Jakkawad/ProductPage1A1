//
//  Test3.swift
//  ProductPage1A1
//
//  Created by admin on 7/15/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import Foundation

class Store {
    static let sharedInstance = Store()
    let models:[Model]
    
    init() {
        let car1 = Car()
        let category = Model(name: "AAA", cars: [car1])
        models = [category]
    }
}