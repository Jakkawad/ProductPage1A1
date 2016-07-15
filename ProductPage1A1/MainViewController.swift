//
//  MainViewController.swift
//  ProductPage1A1
//
//  Created by admin on 7/15/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView:UITableView!

    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return Category.sharedInstance.genres[section].name
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return Category.sharedInstance.genres.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0") as! MainTableViewCell
        cell0.genre = Category.sharedInstance.genres[indexPath.section]
        
        return cell0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
