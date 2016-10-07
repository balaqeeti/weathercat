//
//  WeatherCell.swift
//  rainyshinycloudy
//
//  Created by admin on 10/5/16.
//  Copyright © 2016 Jett Raines. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weatherType: UILabel!
    @IBOutlet weak var highTemp: UILabel!
    @IBOutlet weak var lowTemp: UILabel!
    
    func configureCell(forecast: Forecast) {
        lowTemp.text = "\(forecast.lowtemp)°"
        highTemp.text = "\(forecast.hightemp)°"
        weatherType.text = "\(forecast.weatherType)"
        weatherIcon.image = UIImage(named: forecast.weatherType)
        dayLabel.text = forecast.date
        
    }



}
