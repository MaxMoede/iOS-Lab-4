//
//  restaurantClass.swift
//  lab 4
//
//  Created by Max Moede on 1/22/18.
//  Copyright © 2018 Max Moede. All rights reserved.
//

import Foundation

class bandClass {
    var name: String
    var numMembers: Int
    var logoFileName: String
    var yearsActive: Int
    
    init(name: String, numMembers: Int, logoFileName: String, yearsActive: Int){
        self.name = name
        self.numMembers = numMembers
        self.logoFileName = logoFileName
        self.yearsActive = yearsActive
    }
}
