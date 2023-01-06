//
//  WelcomeRouter.swift
//  VIPER Example
//
//  Created by Руслан Штыбаев on 16.12.2022.
//

import UIKit

protocol WelcomeRouterProtocol: AnyObject {
    func openImage(for temperature: Int)
}

class WelcomeRouter: WelcomeRouterProtocol {
    weak var viewController: ViewController?
    
    func openImage(for temperature: Int) {
        let vc = ImageViewerModuleBuilder.build(temperature: temperature)
        viewController?.present(vc, animated: true)
    }
}
