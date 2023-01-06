//
//  WelcomeInteractor.swift
//  VIPER Example
//
//  Created by Руслан Штыбаев on 16.12.2022.
//

import Foundation

protocol WelcomeInteractorProtocol: AnyObject {
    func loadDate()
    func loadWeather()
    var temperature: Int { get }
}

class WelcomeInteractor: WelcomeInteractorProtocol {

    weak var presenter: WelcomePresenterProtocol?
    let dateService = DateService()
    let weatherService = WeatherService()
    
    var temperature: Int = 0
    
    func loadDate() {
        dateService.getDate { [weak self] date in
            self?.presenter?.didLoad(date: date.description)
        }
    }
    
    func loadWeather() {
        weatherService.getWeather { [weak self] weather in
            self?.presenter?.didLoad(weather: weather)
            self?.temperature = weather
        }
    }
}
