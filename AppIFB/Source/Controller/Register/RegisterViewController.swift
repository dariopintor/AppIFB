//
//  RegisterViewController.swift
//  AppIFB
//
//  Created by Dario Pintor on 22/09/22.
//

import Foundation
import UIKit

class RegisterViewController: ViewControllerDefault {
    //MARK: - Closures
    var onLoginTap:(() -> Void)?
    var onRegisterTap:((_ email: String, _ password: String) -> Void)?

    
    lazy var registerView: RegisterView = {
        let view = RegisterView()
        
        view.onLoginTap = {[weak self] in
            if let self = self {
                self.onLoginTap?()
            }
        }
        
        view.onRegisterTap = {[weak self] email, password in
            if let self = self {
                self.onRegisterTap?(email, password)
            }
        }
        
        view.onShowMessage = {[weak self] title, message in
            if let self = self {
                self.showMessage(title: title, message: message)
            }
        }
        
        return view
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.title = "Registrar usuário"
    }
    
    override func loadView() {
        self.view = registerView
    }
}
