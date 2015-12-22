//
//  ChooseViewController.swift
//  roshambo
//
//  Created by hunglun on 12/22/15.
//  Copyright © 2015 hunglun. All rights reserved.
//

import UIKit



class ChooseViewController: UIViewController {

    
    var value : Roshambo?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let id = segue.identifier where id == "showMatchResult" {
            let destViewController = segue.destinationViewController as! ResultViewController
            destViewController.leftHandValue = self.value
            
        
        }
    }
    @IBAction func choosePaper(sender: UIButton) {
        self.value = .Paper
        performSegueWithIdentifier("showMatchResult", sender: self)
    }
    
    @IBAction func chooseScissors(sender: UIButton) {
        self.value = .Scissors
        performSegueWithIdentifier("showMatchResult", sender: self)
    }
    
    @IBAction func chooseRock(sender: UIButton) {
        self.value = .Rock
        performSegueWithIdentifier("showMatchResult", sender: self)
        
    }
}

