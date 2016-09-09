//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {


    func planetData(dataFile: String) -> String {
        let planetsJSON = NSBundle.mainBundle().URLForResource("PlanetData", withExtension: "json")!
        let rawPlanetsJSON = NSData(contentsOfURL: planetsJSON)!
        
        var planetDictionariesFromJSON: [[String:AnyObject]]!
        do {
            planetDictionariesFromJSON = try! NSJSONSerialization.JSONObjectWithData(rawPlanetsJSON, options: NSJSONReadingOptions()) as! [[String:AnyObject]]
        }
        var bestPlanet = ""
        var topScore = 0
        for planet in planetDictionariesFromJSON {
            var accumulator = 0
            if let name = planet["Name"] as? String {
                if let common = planet["CommonItemsDetected"] as? Int {
                    accumulator += common
                    if let uncommon = planet["UncommonItemsDetected"] as? Int {
                    accumulator += uncommon * 2
                        if let rare = planet["RareItemsDetected"] as? Int {
                        accumulator += rare * 3
                            if let legendary = planet["LegendaryItemsDetected"] as? Int {
                            accumulator += legendary * 4
                                if accumulator > topScore {
                                    topScore = accumulator
                                    bestPlanet = name
                                    }
                                }
                            }
                        }
                    }
                }
            }
        return bestPlanet
    }
}

        

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"

// Kept getting "Statements not allowed at top level" pointing at the do statement. In the Using JSON Data lesson it seemed like it was at the top level, but looked in forum and saw it was within the function, which makes sense given the error.