//
//  WeatherService.swift
//  VIPER Example
//
//  Created by Руслан Штыбаев on 16.12.2022.
//

import Foundation

class WeatherService {
    func getWeather(completion: @escaping(Int) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let temperature = Int.random(in: -30...30)
            completion(temperature )
        }
    }
}
