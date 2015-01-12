//
//  eventFeedViewController.swift
//  UinProto2
//
//  Created by Kareem Dasilva on 1/9/15.
//  Copyright (c) 2015 Kareem Dasilva. All rights reserved.
//

import UIKit

class eventFeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var theFeed: UITableView!
    
    var onsite = [Bool]()
    var paid = [Bool]()
    var food = [Bool]()
    var eventNamed = [String]()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var que = PFQuery(className: "event")
        
        que.findObjectsInBackgroundWithBlock{
            
            (objects:[AnyObject]!,eventError:NSError!) -> Void in
            
            if eventError == nil {
                
                
                for object in objects{
                    
                    println(object.objectId)
                   self.food.append(object["food"] as Bool)
                    self.paid.append(object["paid"] as Bool)
                   self.onsite.append(object["location"] as Bool)
                    self.eventNamed.append(object["title"] as String)
                    self.theFeed.reloadData()
                    
                    
                }
            }
        }              // Do any additional setup after loading the view.
          }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
  
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
        
    }
  
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        
        return eventNamed.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        // Puts the data in a cell
        var cell:eventCell = tableView.dequeueReusableCellWithIdentifier("cell2") as eventCell
        if onsite[indexPath.row] == true {
            
            
            cell.location.image = UIImage(named: "on-campus.png")
            
            
            
        }
        if food[indexPath.row] == true {
            
            
            cell.food.image = UIImage(named: "food.png")
            
            
            
        }
        if paid[indexPath.row] == false {
            
            
            cell.paid.image = UIImage(named: "free.png")
            
            
            
        }
    
        cell.eventName.text = eventNamed[indexPath.row]
        
        return cell
        
    }

    

}
