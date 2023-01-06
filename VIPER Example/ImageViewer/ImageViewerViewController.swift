//
//  ImageViewerViewController.swift
//  VIPER Example
//
//  Created by Руслан Штыбаев on 06.01.2023.
//

import UIKit

protocol ImageViewerProtocol: AnyObject {
    func showImage(image: UIImage?)
}

class ImageViewerViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    
    var presenter: ImageViewerPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoaded()
        initialize()
    }
}

private extension ImageViewerViewController {
    func initialize() {
        
    }
}

extension ImageViewerViewController: ImageViewerProtocol {
    func showImage(image: UIImage?) {
        DispatchQueue.main.async {
            self.imageView.image = image
        }
    }
}
