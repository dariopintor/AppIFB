//
//  LoginViewController.swift
//  AppIFB
//
//  Created by Dario Pintor on 16/08/22.
//

import Foundation
import UIKit



class LoginViewController: ViewControllerDefault {
    
    //MARK: - Clouseres
    var onRegisterTap:(() -> Void)?
    var onLoginTap:(() -> Void)?
    
    lazy var loginView: LoginView = {
        let loginView = LoginView()
        
        loginView.onRegisterTap = {[weak self] in
            if let self = self {
                self.onRegisterTap?()
            }
        }
        
        loginView.onLoginTap = {[weak self] in
            if let self = self {
                self.onLoginTap?()
            }
        }
        
        return loginView
    }()
    
    override func loadView() {
        self.view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Entrar"
    }
    
    func setUserEmail(email: String) {
        loginView.setUserEmail(email: email)
    }
}
