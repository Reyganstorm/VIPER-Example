//
//  WelcomeRouter.swift
//  VIPER Example
//
//  Created by Руслан Штыбаев on 16.12.2022.
//

import Foundation

protocol WelcomeRouterProtocol: AnyObject {
    
}

class WelcomeRouter: WelcomeRouterProtocol {
    weak var presenter: WelcomePresenterProtocol?
}
