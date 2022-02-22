//
//  RandomNumberModel.swift
//  RandomNumberWithDelegate
//
//  Created by Дмитрий Дмитрий on 12.12.2021.
//

struct RandomNumber {
    var minimumValue: Int
    var maximumValue: Int
    
    var getRandomNumber: Int {
        Int.random(in: minimumValue...maximumValue)
    }
}
