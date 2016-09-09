//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    func reverseLongestName(inventory: [UDItem]) -> String {
        var stringLen = 0
        var longStr = ""
        for i in inventory {
            let countStr = i.name.characters.count
            if countStr > stringLen {
                stringLen = countStr
                longStr = i.name
            }
        }
            return String(longStr.characters.reverse())
    }
}