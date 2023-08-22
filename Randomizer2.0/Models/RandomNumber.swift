//
//  RandomNumber.swift
//  Randomizer2.0
//
//  Created by Даниил Козлов on 22.08.2023.
//

import Foundation

struct RandomNumber {
    var minimumValue: Int
    var maximumValue: Int
    
    var getRandom: Int {
        Int.random(in: minimumValue...maximumValue)
    }
}
