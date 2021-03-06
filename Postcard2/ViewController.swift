//
//  ViewController.swift
//  Postcard2
//
//  Created by Colin Mackenzie on 15/09/2014.
//  Copyright (c) 2014 Colin Mackenzie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // a comment

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterAMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton)
    {
        messageLabel.hidden = false
        messageLabel.text   = enterAMessageTextField.text
        enterAMessageTextField.text = ""
        enterAMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail sent", forState: UIControlState.Normal)
    }
}

