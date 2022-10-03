//
//  LoginView.swift
//  AppIFB
//
//  Created by Dario Pintor on 16/08/22.
//

import Foundation
import UIKit

class LoginView: ViewDefault {
    //MARK: - Clouseres
    var onRegisterTap:(() -> Void)?
    var onLoginTap:(() -> Void)?

    //MARK: - Properts
    var emailLabel = LabelDefault(text: "Email")
    var emailTextField = TextFieldDefault(placeholder: "Endereço de email para logar", keyboardType: .emailAddress, returnKeyType: .next)
    
    var passwordLabel = LabelDefault(text: "Senha")
    var passwordTextField: TextFieldDefault = {
        let text = TextFieldDefault(placeholder: "Digite sua senha",
                                    keyboardType: .default,
                                    returnKeyType: .done)
        text.isSecureTextEntry = true
        
        return text
    }()
    
    lazy var buttonOpen: ButtonDefault = {
        let button = ButtonDefault(title: "Entrar")
        
        button.addTarget(self, action: #selector(self.loginTap), for: .touchUpInside)

        return button
    }()
    
    lazy var buttonRegister: ButtonDefault = {
        let button = ButtonDefault(title: "Registrar")
        
        button.addTarget(self, action: #selector(self.registerTap), for: .touchUpInside)

        return button
    }()
    
    //MARK: - Funcs Publics
    func setUserEmail(email: String) {
        emailTextField.text = email
    }
    
    //MARK: - Setup Visual Elements
    override func setupVisualElements() {
        super.setupVisualElements()
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        setupEmail()
        setupPassord()
        setupButtons()
    }
    
    //MARK: - Actions
    @objc
    private func registerTap() {
        onRegisterTap?()
    }
    
    @objc
    private func loginTap() {
        onLoginTap?()
    }
}


extension LoginView: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailTextField {
            self.passwordTextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
            self.onLoginTap?()
        }
        
        return true
    }
}
