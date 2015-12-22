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
}

func randomValue () -> Roshambo {
    // Generate a random Int32 using arc4Random

    let randomValue = Int(1 + arc4random() % 3)
    if randomValue == 0 { return .Scissors}
    if randomValue == 1 { return .Paper}
    if randomValue == 2 { return .Rock}
    
    return .Scissors
}