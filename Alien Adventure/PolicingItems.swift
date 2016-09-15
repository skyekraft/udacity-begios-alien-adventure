//
//  PolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func policingItems(inventory: [UDItem], policingFilter: UDItem throws -> Void) -> [UDPolicingError:Int] {

        var policeDict = [UDPolicingError:Int]()
        policeDict[.ItemFromCunia] = 0
        policeDict[.NameContainsLaser] = 0
        policeDict[.ValueLessThan10] = 0
        
        for contraband in inventory {
            do {
                try policingFilter(contraband)
            } catch UDPolicingError.ItemFromCunia {
                policeDict[.ItemFromCunia]! += 1
            } catch UDPolicingError.NameContainsLaser {
                policeDict[.NameContainsLaser]! += 1
            } catch UDPolicingError.ValueLessThan10 {
                policeDict[.ValueLessThan10]! += 1
            } catch {
                print("also, errors")
            }
            
            }
        return policeDict
    }
}


// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"