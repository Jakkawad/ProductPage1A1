//
//  ViewController.swift
//  ProductPage1A1
//
//  Created by admin on 7/13/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView:UITableView!
    
    
    
    func delay(seconds seconds: Double, completion:()->()) {
        let popTime = dispatch_time(DISPATCH_TIME_NOW, Int64 (Double(NSEC_PER_SEC) * seconds ))
        dispatch_after(popTime, dispatch_get_main_queue()) {
            completion()
        }
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let cell = sender as? CustomCollectionViewCell,
            let detailPage = segue.destinationViewController as? DetailViewController {
            let product = cell.product
            detailPage.product = product
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delay(seconds: 1.0) {
            self.tableView.reloadData()
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController:UITableViewDelegate { }

extension ViewController:UITableViewDataSource {
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return Category.sharedInstance.genres[section].name
        //return Store.sharedInstance.models[section].name
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return Category.sharedInstance.genres.count
        //return Store.sharedInstance.models.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0") as! CustomTableViewCell
        cell0.genre = Category.sharedInstance.genres[indexPath.section]
        //cell0.model = Store.sharedInstance.models[indexPath.section]
        return cell0
    }
}