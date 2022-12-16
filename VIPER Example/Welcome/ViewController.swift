//
//  ViewController.swift
//  VIPER Example
//
//  Created by Руслан Штыбаев on 16.12.2022.
//

import UIKit

protocol WelcomeViewProtocol: AnyObject {
    func showDate(date: String)
    func showWeather(weather: String)
}

class ViewController: UIViewController {

    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var weatherLabel: UILabel!
    
    var presenter: WelcomePresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoaded()
    }


}

extension ViewController: WelcomeViewProtocol {
    func showDate(date: String) {
        DispatchQueue.main.async {
            self.dateLabel.text = date
        }
    }
    
    func showWeather(weather: String) {
        DispatchQueue.main.async {
            self.weatherLabel.text = weather
        }
    }
}
