//
//  HomeCoordinator.swift
//  AppIFB
//
//  Created by Dario Pintor on 29/09/22.
//

import Foundation
import UIKit
class HomeCoordinator: Coordinator {
    
        private let navigationController: UINavigationController
        
    lazy var homeViewController: HomeViewController = {
        let viewController = HomeViewController()
        viewController.tabBarItem.title = "Home"
        viewController.tabBarItem.image = UIImage(systemName: "calendar")
        return viewController
    }()
        init(navigationController: UINavigationController) {
            self.navigationController = navigationController
        }
        
        func start() {
           
        }
        
    }

