//
//  ItemComparison.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

func <(lhs: UDItem, rhs: UDItem) -> Bool {
    if lhs.rarity.rawValue == rhs.rarity.rawValue {
        if lhs.baseValue < rhs.baseValue {
            return true
        } else {
            return false
        }
    } else if lhs.rarity.rawValue < rhs.rarity.rawValue {
            return true
        }
    return false
}
//got the construct essentially right, but was missing .rawValue and then had my boolean values reversed.