//
//  RegisterCoordinator.swift
//  AppIFB
//
//  Created by Dario Pintor on 22/09/22.
//

import Foundation
import UIKit


class RegisterCoordinator: Coordinator {
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = RegisterViewController()
        
        viewController.onLoginTap = {
            self.gotoLogin()
        }
        
        viewController.onRegisterTap = {email, password in
            self.gotoRegister(email: email, password: password)
        }
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    private func gotoLogin() {
        self.navigationController.popViewController(animated: true)
//        let coordinator = LoginCoordinator(navigationController: self.navigationController)
//
//        coordinator.start()
    }
    
    private func gotoRegister(email: String, password: String) {
        UserViewModel.sendUser(email: email, password: password)
    }
}
