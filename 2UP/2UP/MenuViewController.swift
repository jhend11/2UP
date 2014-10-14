//
//  MenuViewController.swift
//  2UP
//
//  Created by JOSH HENDERSHOT on 10/10/14.
//  Copyright (c) 2014 Joshua Hendershot. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    let transitionManager = MenuTransitionManager()
    let transitionManger2 = TransitionManager()
    
    @IBOutlet weak var ridesIcon: UIImageView!
    @IBOutlet weak var ridesLabel: UILabel!
    
    @IBOutlet weak var clubsIcon: UIImageView!
    @IBOutlet weak var clubsLabel: UILabel!
    
    @IBOutlet weak var ridersIcon: UIImageView!
    @IBOutlet weak var ridersLabel: UILabel!
    
    @IBOutlet weak var profileIcon: UIImageView!
    @IBOutlet weak var profileLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.transitioningDelegate = self.transitionManager
        
    }

    @IBAction func clubsButtonPushed(sender: AnyObject) {
    }
    @IBAction func ridesButtonPushed(sender: AnyObject) {
//        self.dismissViewControllerAnimated(true, completion: nil)
     

    }
    @IBAction func ridersButtonPushed(sender: AnyObject) {
    }
    @IBAction func profileButtonPushed(sender: AnyObject) {
        
//        self.navigationController?.performSegueWithIdentifier("showProfile", sender: self)


    }
    @IBAction func cancel(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier ==  "showRides" {
            let toViewController = segue.destinationViewController as UIViewController
            toViewController.transitioningDelegate = self.transitionManger2
        } else if segue.identifier == "showClubs" {
            let toViewController = segue.destinationViewController as UITableViewController
            toViewController.transitioningDelegate = self.transitionManger2
        } else if segue.identifier == "showRiders" {
            let toViewController = segue.destinationViewController as UITableViewController
            toViewController.transitioningDelegate = self.transitionManger2
        } 
       

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
