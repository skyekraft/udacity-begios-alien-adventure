//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        var mostCommon = [Character:Int]()
        var maxValue: Int = 0
        var maxCharacter: Character = "a"
        if inventory.isEmpty {
        return nil
        } else {
        for i in inventory {
            let name = i.name.lowercaseString.characters
            for letter in name {
                if mostCommon[letter] != nil {
                    mostCommon[letter]! += 1
                } else {
                    mostCommon[letter] = 1
                }
            }
        }
        for (letter, number) in mostCommon {
            if number > maxValue {
                maxValue = number
                maxCharacter = letter
                }
            }
         }
        return maxCharacter
    }
}