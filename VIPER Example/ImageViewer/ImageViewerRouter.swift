//
//  ImageViewerRouter.swift
//  VIPER Example
//
//  Created by Руслан Штыбаев on 06.01.2023.
//

import Foundation

protocol ImageViewerRouterProtocol: AnyObject {
    
}

class ImageViewerRouter: ImageViewerRouterProtocol {
    weak var viewController: ImageViewerViewController?
}
