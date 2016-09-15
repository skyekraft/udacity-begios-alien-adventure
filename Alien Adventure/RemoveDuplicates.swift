//
//  RemoveDuplicates.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func removeDuplicates(inventory: [UDItem]) -> [UDItem] {
        let setted = Set(inventory.sort( {$0.0.name < $0.1.name }))
        return Array(setted.filter( { $0.name == $0.name } ))
    }
    
}
