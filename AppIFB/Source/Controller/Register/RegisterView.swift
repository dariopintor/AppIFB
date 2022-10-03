//
//  RegisterView.swift
//  AppIFB
//
//  Created by Dario Pintor on 22/09/22.
//

import Foundation
import UIKit

class RegisterView: ViewDefault {
    //MARK: - Clouseres
    var onRegisterTap:((_ email: String, _ password: String) -> Void)?
    var onLoginTap:(() -> Void)?
    var onShowMessage:((_ title: String, _ message: String) -> Void)?

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
    
    lazy var buttonRegister: ButtonDefault = {
        let button = ButtonDefault(title: "Registrar")
        
        button.addTarget(self, action: #selector(self.buttonRegisterTap), for: .touchUpInside)

        return button
    }()
    
    lazy var buttonOpen: ButtonDefault = {
        let button = ButtonDefault(title: "Voltar tela Login")
        
        button.addTarget(self, action: #selector(self.loginTap), for: .touchUpInside)

        return button
    }()
    
    //MARK: - Setup Visual Elements
    override func setupVisualElements() {
        super.setupVisualElements()
        
        setupEmail()
        setupPassord()
        setupButtons()
    }
    
    //MARK: - Email Visual Elements
    func setupEmail() {
        self.addSubview(emailLabel)
        self.addSubview(emailTextField)
        emailTextField.delegate = self
        
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 150),
            emailLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            emailLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 12),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
            emailTextField.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    
    //MARK: - Password Visual Elements
    func setupPassord() {
        self.addSubview(passwordLabel)
        self.addSubview(passwordTextField)
        passwordTextField.delegate = self
        
        NSLayoutConstraint.activate([
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 35),
            passwordLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            passwordLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 12),
            passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            ])
    }
    
    //MARK: - Button Visual Elements
    private func setupButtons() {
        self.addSubview(buttonOpen)
        self.addSubview(buttonRegister)
        
        NSLayoutConstraint.activate([
            buttonRegister.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 35),
            buttonRegister.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            buttonRegister.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
            
            buttonRegister.heightAnchor.constraint(equalToConstant: 52),
            
            
            buttonOpen.topAnchor.constraint(equalTo: buttonRegister.bottomAnchor, constant: 35),
            buttonOpen.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            buttonOpen.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
            buttonOpen.heightAnchor.constraint(equalToConstant: 52)
        ])
    }
    
    //MARK: - Actions
    @objc
    private func buttonRegisterTap() {
        if let email = emailTextField.text,
           let password = passwordTextField.text {
            
            if email.isEmpty || password.isEmpty {
                onShowMessage?("Erro", "Campo email e senha são obrigatórios")
            } else {
                onRegisterTap?(email, password)
            }
        }
    }

    @objc
    private func loginTap() {
        onLoginTap?()
    }
}

extension RegisterView: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailTextField {
            self.passwordTextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
            self.buttonRegisterTap()
        }
        
        return true
    }
}
