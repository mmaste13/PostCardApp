//
//  ViewController.swift
//  Postcard
//
//  Created by Marshall Masterson on 10/4/14.
//  Copyright (c) 2014 Marshall Masterson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messagelabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailBtnPressed(sender: UIButton) {
        messagelabel.hidden = false
        messagelabel.text = enterMessageTextField.text
        messagelabel.textColor = UIColor.redColor()
        
        
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        mailBtn.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

