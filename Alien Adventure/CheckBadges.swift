//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        var badgeCache = [UDRequestType]()
        var requests = [UDRequestType]()
        
        for badge in badges {
            badgeCache.append(badge.requestType)
        }
        
        for request in requestTypes {
            requests.append(request)
        }
        
        if badgeCache.count < requests.count {
            return false
        }
        
        
        for request in requests {
            
            if badgeCache.contains(request) {
                
                let requestIndex = badgeCache.indexOf(request)
                
                badgeCache.removeAtIndex(requestIndex!)
            } else {
                return false
            }
        }
        return true
    }
    
}

