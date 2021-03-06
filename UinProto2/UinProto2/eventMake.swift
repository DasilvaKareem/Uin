//
//  eventMake.swift
//  UinProto2
//
//  Created by Kareem Dasilva on 1/9/15.
//  Copyright (c) 2015 Kareem Dasilva. All rights reserved.
//

import UIKit

class eventMake: UIViewController {

    var dateStr = String()
    @IBOutlet weak var eventTitle: UITextField!
    
    
    @IBOutlet weak var eventSum: UITextField!
    
    
    @IBOutlet weak var date: UIDatePicker!
    
    @IBAction func datePicker(sender: UIDatePicker) {
        
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = NSDateFormatterStyle.FullStyle
        dateStr = dateFormatter.stringFromDate(date.date)
        
    }
   
    var onsite:Bool = true
    
    var food:Bool = true
    
    var paid:Bool = false
    
    @IBAction func location(sender: UISegmentedControl) {
        
        if UISegmentedControlNoSegment == 1 {
            
            onsite = true
            
            
        }
        else {
            
            onsite = false
            
        }
        
    
        }
   
    
    @IBAction func isFood(sender: UISegmentedControl) {
        
        if UISegmentedControlNoSegment == 1 {
            
            food = true
            
        }
        else {
            
            food = false
            
        }
        
        
    }
   
   
    @IBAction func isPaid(sender: UISegmentedControl) {
        
        
        if UISegmentedControlNoSegment == 1 {
            
            paid = false
            
        }
        else {
            
            paid = true
            
        }
        
        
    }
    
    @IBAction func makeEvent(sender: AnyObject) {
        
        var empty = ""
        var event = PFObject(className: "event")
        println(dateStr)
        event["date"] = dateStr as String
        event["food"] = food
        event["paid"] = paid
        event["location"] = onsite
        event["title"] = eventTitle.text
        event["user"] = PFUser.currentUser().username
        event.saveInBackgroundWithBlock{
            
            (success:Bool!,eventError:NSError!) -> Void in
            
            if (eventError == nil){
                
                self.performSegueWithIdentifier("eventback", sender: self)
                println("it worked")
                
                
                
            }
                
            else {
                
                println("nah")
                
            }
            
            
            
        }
        
        
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
