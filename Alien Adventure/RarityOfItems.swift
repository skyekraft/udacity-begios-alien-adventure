//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        var rarityDict : [UDItemRarity:Int]=[.Common: 0, .Uncommon: 0, .Rare: 0, .Legendary: 0]
        for i in inventory {
            switch i.rarity {
            case .Common:
                rarityDict[.Common]? += 1
            case .Uncommon:
                rarityDict[.Uncommon]? += 1
            case .Rare:
                rarityDict[.Rare]? += 1
            case .Legendary:
                rarityDict[.Legendary]? += 1
                }
        }
        return rarityDict
    }
}