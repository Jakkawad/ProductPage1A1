//
//  DetailViewController.swift
//  ProductPage1A1
//
//  Created by admin on 7/13/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import AlamofireImage

class DetailViewController: UIViewController {

    @IBOutlet weak var lblProductName:UILabel!
    @IBOutlet weak var lblProductDescription:UILabel!
    @IBOutlet weak var imageViewProduct:UIImageView!
    
    var product:Product? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let product = product {
            lblProductName.text = product.name
            lblProductDescription.text = product.productDescription
            if let url = NSURL(string: product.imageURL) {
                self.imageViewProduct.af_setImageWithURL(url)
            }
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
