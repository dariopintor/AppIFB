//
//  imageCoordenator.swift
//  AppIFB
//
//  Created by Dario Pintor on 05/10/22.
//

import Foundation
import UIKit
class ImageCoordenator: Coordinator {
    
    private let navigationController: UINavigationController
        
    lazy var imageViewController: ImageViewController = {
        let viewController = ImageViewController()
        viewController.tabBarItem.title = "Image"
        viewController.tabBarItem.image = UIImage(systemName: "book.fill")
        return viewController
    }()
        init(navigationController: UINavigationController) {
            self.navigationController = navigationController
        }
        
        func start() {
           
        }
        
    }
