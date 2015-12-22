//
//  RoshamboModel.swift
//  roshambo
//
//  Created by hunglun on 12/22/15.
//  Copyright © 2015 hunglun. All rights reserved.
//

import Foundation

enum Roshambo : Int{
    case Scissors = 0
    case Paper
    case Rock
    func toString() -> String {
        return ["Scissors","Paper","Rock"][self.rawValue]
    }

    static func randomValue () -> Roshambo {
        // Generate a random Int32 using arc4Random
        
        let randomValue = Int(arc4random() % 3)
        
        return Roshambo(rawValue: randomValue)!
    }
}

