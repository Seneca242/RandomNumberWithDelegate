//
//  RandomNumberModel.swift
//  RandomNumberWithDelegate
//
//  Created by Дмитрий Дмитрий on 12.12.2021.
//

struct RandomNumber {
    let minimumNumber: Int
    let maximumNumber: Int
    
    var getRandomNumber: Int {
        Int.random(in: minimumNumber...maximumNumber)
    }
}
