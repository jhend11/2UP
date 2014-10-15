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

    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var editButton: UIButton!
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var motorcycleLabel: UILabel!
    @IBOutlet weak var yearsRidingLabel: UILabel!
    
    
    override func viewDidLoad() {
        var currentUser = PFUser.currentUser()
        println(currentUser)
        
        if ((currentUser) != nil) {
        }
        else {
            self.performSegueWithIdentifier("showLogin", sender: self)
        }
 menuButton.layer.cornerRadius = 25
       
    }
   
    @IBAction func editButtomPushed(sender: AnyObject) {
       
    }

}

