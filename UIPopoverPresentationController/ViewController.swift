//
//  ViewController.swift
//  UIPopoverPresentationController
//
//  Created by Matthew Hunt on 7/10/15.
//  Copyright (c) 2015 Matthew Hunt. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    //link popover button
    @IBAction func popover(sender: AnyObject) {
        self.performSegueWithIdentifier("showView", sender: self)
    }
    
    //a segue is a connection between the storyboard and controller
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //check to make sure segie is on popover
        if segue.identifier == "showView"{
            
            var vc = segue.destinationViewController as! UIViewController
            
            var controller = vc.popoverPresentationController
            
            if controller != nil{
                controller?.delegate = self
            }
            
        }
    }
    
    //force UI popup controller
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
    }

}

