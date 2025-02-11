//
//  File.swift
//  Assignment5
//
//  Created by user269254 on 2/10/25.
//

import Foundation


class Situation {
    var description: String
    var option1: String
    var option2: String
    var result: String
    
    //initializing
    init(description: String, option1: String, option2: String, result: String = "unstated") {
        self.description = description
        self.option1 = option1
        self.option2 = option2
        self.result = result
    }
    
}
