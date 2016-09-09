//
//  InscriptionEternalStar.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func inscriptionEternalStar(inventory: [UDItem]) -> UDItem? {
        for i in inventory {
            if let _ = i.inscription {
                if (i.inscription!.lowercaseString.containsString("eternal star")) {
                return i
                }
            }
        }
        return nil
    }
}