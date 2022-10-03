//
//  HomeCoordinator.swift
//  AppIFB
//
//  Created by Dario Pintor on 29/09/22.
//

import Foundation
import UIKit
class HomeCoordinator {
    
        private let navigationController: UINavigationController
        
        init(navigationController: UINavigationController) {
            self.navigationController = navigationController
        }
        
        func start() {
            let viewController = HomeViewController()
            
            self.navigationController.pushViewController(viewController, animated: true)
        }
        
    }

