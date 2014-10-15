//
//  SignupViewController.swift
//  Swift Ribbit
//
//  Created by JOSH HENDERSHOT on 8/29/14.
//  Copyright (c) 2014 Joshua Hendershot. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(UIScreen.mainScreen().bounds.size.height == 568)
        {
            self.backgroundImageView.image = UIImage(named: "loginBackground-568h")
        }
    }
    
    @IBAction func signup(sender: AnyObject) {
        var username = self.usernameField.text.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        var password = self.passwordField.text.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        var email = self.emailField.text.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        
        if ((username.utf16Count == 0) || (password.utf16Count == 0) || (email.utf16Count == 0)){
            let alertView = UIAlertView(title: "Oops!", message: "Make sure you enter a username, password, and email address!", delegate: self, cancelButtonTitle: "OK")
            alertView.show()
        } else {
            var newUser = PFUser()
            println(username)
            println(password)
            println(email)
            newUser.username = username
            newUser.password = password
            newUser.email = email

            
            newUser.signUpInBackgroundWithBlock({ (succeeded: Bool!, error: NSError!) -> Void in
                if (error != nil) {
                    let alertView = UIAlertView(title: "Sorry!", message: "error", delegate: self, cancelButtonTitle: "OK")
                    alertView.show()
                }
                else {
                self.navigationController?.popToRootViewControllerAnimated(true)
                }
            
            })
       
        }
    }
    @IBAction func dismiss(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
}
