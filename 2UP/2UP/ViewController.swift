//
//  ViewController.swift
//  2UP
//
//  Created by JOSH HENDERSHOT on 10/10/14.
//  Copyright (c) 2014 Joshua Hendershot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let transitionManger2 = TransitionManager()

    @IBOutlet weak var nameField: UITextField!
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.greenColor()
        nameField.enabled = false
    }
   
    @IBAction func editButtomPushed(sender: AnyObject) {
        nameField.enabled = true
    }

}

