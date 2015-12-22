//
//  ResultViewController.swift
//  roshambo
//
//  Created by hunglun on 12/22/15.
//  Copyright © 2015 hunglun. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var announcement: UILabel!
    var userValue : Roshambo?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func dismiss (){
      
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewWillAppear(animated: Bool) {
      
        imageView.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0, alpha: 1)
        if let userValue = self.userValue {

            let opponentValue = Roshambo.randomValue()
            print("\(userValue.toString())-\(opponentValue.toString())")
            switch (userValue, opponentValue) {
            case let (user,computer) where user == computer :
                    announcement.text = "Tie! \(userValue.toString()) vs. \(opponentValue.toString())"
            case (.Scissors,.Paper),(.Paper,.Rock),(.Rock,.Scissors) :
                    imageView.image = UIImage(named: "\(userValue.toString())-\(opponentValue.toString())")
                    announcement.text = " You win! \(userValue.toString()) vs. \(opponentValue.toString())."
            default :imageView.image = UIImage(named: "\(opponentValue.toString())-\(userValue.toString())")
                    announcement.text = " You lose! \(userValue.toString()) vs. \(opponentValue.toString())."
            }
        }
        


    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
