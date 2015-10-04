//
//  EmojiPostViewController.swift
//  Emojis
//
//  Created by Paul O'Connor on 10/2/15.
//  Copyright © 2015 OCApps. All rights reserved.
//

import UIKit
import Parse

class EmojiPostViewController: UIViewController {

    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var emojiTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.emojiTextField.becomeFirstResponder()

        // Do any additional setup after loading the view.
    }
    @IBAction func cancelTapped(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func postTapped(sender: AnyObject) {
        if self.emojiTextField.text!.isEmpty{
            self.errorLabel.text = "Please enter an Emoji"
            
        } else {
            if self.descriptionTextField.text!.isEmpty {
                //Emoji is empty.
                self.errorLabel.text = "Please enter a description"
                } else {
                    if self.emojiTextField.text!.characters.count > 1 {
                    self.errorLabel.text = "Please only enter one emoji"
                    } else {
                        self.errorLabel.text = ""
                        createEmojiPost()
                    }
                }
            }
        }
    func createEmojiPost(){
        let emojiPost = PFObject(className: "EmojiPost")
        emojiPost.setObject(self.emojiTextField.text!, forKey: "emoji")
        emojiPost.setObject(self.descriptionTextField.text!, forKey: "description")
        emojiPost.setObject(PFUser.currentUser()!, forKey: "user")
        
        emojiPost.saveInBackgroundWithBlock { (saved: Bool, error: NSError?) -> Void in
            if saved {
                self.dismissViewControllerAnimated(true, completion: nil)
            } else {
                self.errorLabel.text = "Upload error"
            }
            
            }
        
        }
    }

