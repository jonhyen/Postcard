//
//  ViewController.swift
//  Postcard
//
//  Created by Jonathan Yen on 12/7/14.
//  Copyright (c) 2014 DHDI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
         //Our First Project Lesson Code
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
      
        /*First Challenge!
        1) Add a Label to the storyboard - set its' initial state to hidden. Connect it to the storyboard and name it nameLabel.
        2) When pressing the button a few things should occur. (Hint: each item should be a different line of code)
        3) Unhiding nameLabel
        4) Update the nameLabel's text to display the information in the nameTextField.
        5) Change the nameLabel's textColor to blue.
        6) Clear the nameTextField's text and remove the keyboard
        */
        nameLabel.hidden = false
        nameLabel.text = "To: " + enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        //End of First Challenge!
        
        //Our First Project Lesson Code
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        mailButton.setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
        mailButton.userInteractionEnabled = false
     
        
    }
    

}

