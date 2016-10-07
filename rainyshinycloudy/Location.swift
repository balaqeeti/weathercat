//
//  Location.swift
//  rainyshinycloudy
//
//  Created by admin on 10/5/16.
//  Copyright © 2016 Jett Raines. All rights reserved.
//

import Foundation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}
