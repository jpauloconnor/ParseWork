//
//  ViewController.swift
//  Emojis
//
//  Created by Paul O'Connor on 10/2/15.
//  Copyright © 2015 OCApps. All rights reserved.
//

import UIKit
import Parse
import ParseTwitterUtils

class ViewController: UIViewController {
    
        @IBAction func twitter(sender: AnyObject) {
            
        PFTwitterUtils.initializeWithConsumerKey("y60iUuPgE9IcYo9UEuBfHZerF", consumerSecret: "cuRemjCUfGy2SDIlttbBgKgCH866Qgu35zq9bp6xYWaMAryHdC")
        PFTwitterUtils.logInWithBlock { (user: PFUser?, error: NSError?) -> Void in
            if user == nil {
                print("Error, Captain")
            } else {
                self.performSegueWithIdentifier("logInSegue", sender: nil)
            }
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

