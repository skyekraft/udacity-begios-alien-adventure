//
//  ItemsFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func itemsFromPlanet(inventory: [UDItem], planet: String) -> [UDItem] {
        var planetThings = [UDItem]()
        for i in inventory {
            if let origin = i.historicalData["PlanetOfOrigin"] as? String {
                print(origin)
                if origin.containsString(planet) {
                planetThings.append(i)
                }
            }
        }
        return planetThings
    }
}