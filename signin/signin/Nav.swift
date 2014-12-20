//
//  Nav.swift
//  signin
//
//  Created by Kareem Dasilva on 12/20/14.
//  Copyright (c) 2014 Kareem Dasilva. All rights reserved.
//SUPER ROUGH DRAFT 



import UIKit

class Nav: UITableViewController {
    
    // Sample text from Users
    var info = ["bah", "fdsfdsf", "sadfdasfd","adsadsa"]
    
    var users = ["Kareem","dude1","dude2","dude3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Returns the amount of users post
        return users.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Puts the data in a cell
        var cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "cell")
        var cell2 = UITableViewCell(style: UITableViewCellStyle.Value2, reuseIdentifier: "cell")
        
        cell.textLabel?.text = users[indexPath.row]
        
        cell.detailTextLabel?.text = info[indexPath.row]
        return cell
        
        
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
     
           }
    
    
}
