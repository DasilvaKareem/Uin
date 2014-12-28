//
//  ViewController.swift
//  UinProto2
//
//  Created by Kareem Dasilva on 12/27/14.
//  Copyright (c) 2014 Kareem Dasilva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    
    @IBOutlet weak var textpost: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func submit(sender: AnyObject) {
        
        var status = PFObject(className: "post")
        status["username"] = PFUser.currentUser().username
        status["stuff"] = textpost.text
        status.saveInBackground()
        
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
