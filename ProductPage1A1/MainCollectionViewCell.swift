//
//  MainCollectionViewCell.swift
//  ProductPage1A1
//
//  Created by admin on 7/15/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import AlamofireImage

class MainCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewProduct:UIImageView!
    
    var product:Product? = nil {
        didSet {
            if let product = product,
                let url = NSURL(string: product.imageURL) {
                self.imageViewProduct.af_setImageWithURL(url)

            }
        }
    }
}
