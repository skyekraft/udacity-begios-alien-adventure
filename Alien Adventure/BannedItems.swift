//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        var bannedList = [Int]()
        let itemListURL = NSBundle.mainBundle().URLForResource("ItemList", withExtension: "plist")!
        let itemListArray = NSArray(contentsOfURL: itemListURL) as! [(AnyObject)]
        
        for i in itemListArray {
        if let iD = i["ItemID"] as? Int {
            if let name = i["Name"] as? String {
                if let historicalData = i["HistoricalData"] as? [String: AnyObject] {
                    if let age = historicalData["CarbonAge"] as? Int {
                        if name.lowercaseString.containsString("laser") {
                            if age <= 30 {
                            bannedList.append(iD)
                                }
                            }
                        }
                    }
                }
            }
        }
        return bannedList
    }
}