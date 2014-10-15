//
//  LoginViewController.swift
//  Swift Ribbit
//
//  Created by JOSH HENDERSHOT on 8/29/14.
//  Copyright (c) 2014 Joshua Hendershot. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(UIScreen.mainScreen().bounds.size.height == 568)
        {
            self.backgroundImageView.image = UIImage(named: "loginBackground-568h")
        }
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(false)
        self.navigationController?.navigationBarHidden = true
    }
    @IBAction func login(sender: AnyObject) {
        var username = self.usernameField.text.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        var password = self.passwordField.text.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        
        if (username.utf16Count == 0 || password.utf16Count == 0){
            let alertView = UIAlertView(title: "Oops!", message: "Make sure you enter a username and password!", delegate: self, cancelButtonTitle: "OK")
            alertView.show()
            
        }
        else {
            PFUser.logInWithUsernameInBackground(username, password: password, block: { (user: PFUser!, error: NSError!) -> Void in
                if (error != nil) {
                    let alertView = UIAlertView(title: "Oops!", message: "Make sure you enter a username and password!", delegate: self, cancelButtonTitle: "OK")
                    alertView.show()
                    
                }
                else {
                    
                    self.navigationController?.popToRootViewControllerAnimated(true)
                }
            })
            
        }
    }
    
}
