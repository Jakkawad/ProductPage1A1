//
//  CustomCollectionViewCell.swift
//  ProductPage1A1
//
//  Created by admin on 7/13/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import AlamofireImage

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewProduct:UIImageView!
    @IBOutlet weak var lblProductName:UILabel!
    
    var product:Product? = nil {
        didSet {
            if let product = product,
                let url = NSURL(string: product.imageURL) {
                self.imageViewProduct.af_setImageWithURL(url)
                self.lblProductName.text = product.name
            }
        }
    }
}
