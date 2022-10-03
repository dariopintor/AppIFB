//
//  LoginCoordinator.swift
//  AppIFB
//
//  Created by Moacir Ezequiel Lamego on 13/07/2022.
//

import Foundation
import UIKit


class LoginCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
        let viewController = LoginViewController()
        
        let email = UserViewModel.getUser()
        viewController.setUserEmail(email: email)
        
        viewController.onRegisterTap = {
            self.gotoRegister()
        }
        
        viewController.onLoginTap = {
            self.gotoHome()
        }
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    func gotoRegister() {
        let coordinator = RegisterCoordinator(navigationController: self.navigationController)
        
        coordinator.start()
    }
    
    func gotoHome() {
        let coordinator = HomeCoordinator(navigationController: self.navigationController)
        
        coordinator.start()
    }
}
