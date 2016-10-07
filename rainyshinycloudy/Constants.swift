//
//  Constants.swift
//  rainyshinycloudy
//
//  Created by admin on 10/5/16.
//  Copyright © 2016 Jett Raines. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "1d9745ce1d53f1a03a08243f8d6f0693"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=1d9745ce1d53f1a03a08243f8d6f0693"


let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&mode=json&appid=1d9745ce1d53f1a03a08243f8d6f0693"
