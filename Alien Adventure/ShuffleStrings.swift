//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        if s1 == "" && s2 == "" && shuffle == "" {
            return true
        } else if s1 != "" && s2 != "" && shuffle != "" {
            if (s1.characters.count + s2.characters.count != shuffle.characters.count) {
                return false
            } else {
            for i in s1.characters.indices {
                if i == s1.characters.endIndex.predecessor() {
                    break
                } else if shuffle.characters.indexOf(s1[i]) < shuffle.characters.indexOf(s1[i.successor()]) {
                } else {
                    return false
                }
                for i in s2.characters.indices {
                    if i == s2.characters.endIndex.predecessor() {
                        break
                    } else if shuffle.characters.indexOf(s2[i]) < shuffle.characters.indexOf(s2[i.successor()]) {
                    } else {
                        return false
                    }
            return true
                    }
                }
            }
        }
        return false
    }
}