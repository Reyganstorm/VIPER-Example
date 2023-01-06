//
//  ImageViewerPresenter.swift
//  VIPER Example
//
//  Created by Руслан Штыбаев on 06.01.2023.
//

import UIKit

protocol ImageViewerPresenterProtocol: AnyObject {
    func viewDidLoaded()
}

class ImageViewerPresenter {
    weak var view: ImageViewerProtocol?
    var router: ImageViewerRouterProtocol
    var interactor: ImageViewerInteractorProtocol
    
    init(router: ImageViewerRouterProtocol, interactor: ImageViewerInteractorProtocol) {
        self.router = router
        self.interactor = interactor
    }
}

extension ImageViewerPresenter: ImageViewerPresenterProtocol {
    func viewDidLoaded() {
         let image = interactor.getImageForCurrentTemperature()
        view?.showImage(image: image)
    }
}
