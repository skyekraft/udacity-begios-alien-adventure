//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        let planets = itemsFromPlanet(inventory, planet: planet)
        if planets.count == 0 {
            return nil
        } else {
        var eldestItem: UDItem?
        var oldestAge = 0
        for t in planets {
            if let oldie = t.historicalData["CarbonAge"] as? Int {
                if oldie > oldestAge {
                    oldestAge = oldie
                    eldestItem = t
                    }
                }
            }
    return eldestItem
        }
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"