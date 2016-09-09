//
//  LeastValuableItem.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func leastValuableItem(inventory: [UDItem]) -> UDItem? {
        if inventory.count == 0 {
            return nil
        } else {
        var lowestValue = inventory.first?.baseValue
        var cheapItem = inventory.first
            for i in inventory {
            if i.baseValue < lowestValue {
                lowestValue = i.baseValue
                cheapItem = i
                }
            }
            return cheapItem
        }
    }
}