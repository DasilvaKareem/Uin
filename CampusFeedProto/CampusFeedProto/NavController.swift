//
//  NavController.swift
//  CampusFeedProto
//
//  Created by Kareem Dasilva on 12/22/14.
//  Copyright (c) 2014 Kareem Dasilva. All rights reserved.
//

import UIKit

class NavController: UITableViewController {

    var info = ["bah", "fdsfdsf", "sadfdasfd","adsadsa"]
    
    var users = ["Kareem","dude1","dude2","dude3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let nib = UINib(nibName: "cell", bundle: nil)
        self.tableView.registerNib(nib, forCellReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
        
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return users.count
        
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Puts the data in a cell
        var sup = "cell"
        var cell1:cell! = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as? cell
        if var level = cell1{
            cell1.firstlabel.text = users[indexPath.row]
        }
        
        
        if var level2 = cell1{
            
            
            cell1.lastlabel.text = info[indexPath.row]
        }
        
        
        return cell1

}
}