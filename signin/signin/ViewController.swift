//
//  ViewController.swift
//  signin
//
//  Created by Kareem Dasilva on 12/18/14.
//  Copyright (c) 2014 Kareem Dasilva. All rights reserved.
//VERY ROUGH DRAFT NOT SECURE DO NOT PUT IN REAL CRENDTIALS

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var username: UITextField!
    
    
    @IBOutlet weak var password: UITextField!
  
    
    
    
   
    
    
    
   //Sign in button
    @IBAction func SignIn(sender: AnyObject) {
        
        var empty = ""
        
        var error = ""
        
        //Makes sure that the user puts in a value
        if username.text == empty || password.text == empty {
            
            error = "Please enter a username "
            println(error)
        }
     
        else {
            
        
            // Uses credentials from parse
            PFUser.logInWithUsernameInBackground(username.text, password: password.text) {
                (user: PFUser!, signuperror: NSError!) -> Void in
                
                if signuperror == nil {
                    // Moves into the rough feed
                    self.performSegueWithIdentifier("login", sender: self)
                    println("It did not work")
                }
                else {
                    
                    println("It did not work")
                    
                }
                
                
            }
            
        
        }
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     

        
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

