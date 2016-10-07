//
//  CurrentWeather.swift
//  rainyshinycloudy
//
//  Created by admin on 10/5/16.
//  Copyright © 2016 Jett Raines. All rights reserved.
//

import UIKit
import Alamofire

class CurrentWeather {
    var _cityName: String!
    var _date: String!
    var _weatherType: String!
    // Orginal _currentTemp was Double
    var _currentTemperature: Int!
    
    var cityName: String {
        if _cityName == nil {
            _cityName = ""
        }
        return _cityName
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    // Original was Double below
    var currentTemperature: Int {
        if _currentTemperature == nil {
            _currentTemperature = 0
        }
        return _currentTemperature
    }
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        let currentDate = dateFormatter.string(from: Date())
        self._date = "Today, \(currentDate)"
        return _date
    }
 
    func downloadWeatherDetails(completed: @escaping DownloadComplete) {
        // tell alamofire where to download from
        Alamofire.request(CURRENT_WEATHER_URL, method:.get).responseJSON { response in
        
            let result = response.result
        
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let name = dict["name"] as? String {
                    self._cityName = name.capitalized
                }
                
                if let weather = dict["weather"] as? [Dictionary<String, AnyObject>]{
                    if let main = weather[0]["main"] as? String {
                        self._weatherType = main.capitalized
                    }
                }
                
                if let main = dict["main"] as? Dictionary<String, AnyObject> {
                    if let currentTemp = main["temp"] as? Double {
                        let kelvinToFahrenheitPreDivision = (currentTemp * (9/5) - 459.67)
                        //original was Double and not INt
                        let kelvinToFahrenheit = Int(round(10 * kelvinToFahrenheitPreDivision/10))
                        self._currentTemperature = kelvinToFahrenheit
                    
                    }
                }
            }
            completed()
            
        }
    }
}
