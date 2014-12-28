//
//  feed.swift
//  UinProto2
//
//  Created by Kareem Dasilva on 12/27/14.
//  Copyright (c) 2014 Kareem Dasilva. All rights reserved.
//

import UIKit

class feed: UITableViewController {
    var info = ["bah", "fdsfdsf", "sadfdasfd","adsadsa"]
    
    var users = ["Kareem","dude1","dude2","dude3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        // Puts the data in a cell
        
        var cell1:customcell = self.tableView.dequeueReusableCellWithIdentifier("cell") as customcell
        
        
        
        cell1.textLabel?.text = info[indexPath.row]
        
      
        return cell1
        
    }
}