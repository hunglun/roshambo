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
    var leftHandValue : Roshambo?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func dismiss (){
        print("Dismiss view!")
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewWillAppear(animated: Bool) {
      
        imageView.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0, alpha: 1)
        
        if let leftHandValue = self.leftHandValue {
            let rightHandValue : Roshambo = randomValue()
            if leftHandValue == .Scissors && rightHandValue == .Paper {
                
                // ScissorsCutPaper
                imageView.image = UIImage(named: "scissorsCutPaper")
                announcement.text = " You win! scissors cut paper."
            }else if leftHandValue == .Paper && rightHandValue == .Rock {
                // PaperCoversRock
                imageView.image = UIImage(named: "paperCoversRock")
                announcement.text = " You win! paper covers rock."

            }else if leftHandValue == .Rock && rightHandValue == .Scissors {
                // RockCrushesScissors
                imageView.image = UIImage(named: "rockCrushesScissors")
                announcement.text = " You win! Rock crushes scissors."

            }else {
                // you lose!
                if rightHandValue == .Scissors && leftHandValue == .Paper {
                    // ScissorsCutPaper
                    imageView.image = UIImage(named: "scissorsCutPaper")
                    announcement.text = " You lose! scissors cut paper"

                }else if rightHandValue == .Paper && leftHandValue == .Rock {
                    // PaperCoversRock
                    
                    imageView.image = UIImage(named: "paperCoversRock")
                    announcement.text = " You lose! Paper covers rock."

                }else if rightHandValue == .Rock && leftHandValue == .Scissors {
                    // RockCrushesScissors
                      imageView.image = UIImage(named: "rockCrushesScissors")
                        announcement.text = " You lose! Rock crushes scissors."
        
                }else if rightHandValue == leftHandValue {
        
                    announcement.text = "Draw!"
                    
                    
                }
            }
        }


    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
