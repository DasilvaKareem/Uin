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
    var posted = [String]()
    var users = [String]()
    
    var refresher: UIRefreshControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
           updateusers()
        refresher = UIRefreshControl()
        refresher.attributedTitle = NSAttributedString(string: "Bruh let me refresh")
        refresher.addTarget(self, action: "refresh", forControlEvents: UIControlEvents.ValueChanged)
        self.tableView.addSubview(refresher)
     
        
    }
    
    func updateusers() {
        var que = PFQuery(className: "post")
        que.findObjectsInBackgroundWithBlock{
            (objects:[AnyObject]!, queError:NSError!) -> Void in
            if queError == nil {
                
                println(objects.count)
                
                for object in objects {
                    println(object.objectId)
                    self.users.append(object["username"] as String)
                    self.posted.append(object["stuff"] as String)
                    self.tableView.reloadData()
                    
                }
            }
            else {
                
                println("error")
            }
            self.refresher.endRefreshing()
            
        }
        
        
        
    }
    func refresh() {
        
    
        
        updateusers()
        
    }
    
    
    @IBAction func logout(sender: AnyObject) {
        PFUser.logOut()
        self.performSegueWithIdentifier("logout", sender: "self")
        
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
        
        
        
        cell1.user.text = users[indexPath.row]
        
        cell1.posts.text = posted[indexPath.row]
        
      
        return cell1
        
    }
}