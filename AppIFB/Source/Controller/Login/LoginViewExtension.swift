//
//  LogingViewExtension.swift
//  AppIFB
//
//  Created by Dario Pintor on 28/09/22.
//

import Foundation
import UIKit
extension LoginView {
    //MARK: - Email Visual Elements
    func setupEmail() {
        self.addSubview(emailLabel)
        self.addSubview(emailTextField)
        
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
    func setupButtons() {
        self.addSubview(buttonOpen)
        self.addSubview(buttonRegister)
        
        NSLayoutConstraint.activate([
            buttonOpen.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 35),
            buttonOpen.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            buttonOpen.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
            
            buttonOpen.heightAnchor.constraint(equalToConstant: 52),
            buttonRegister.topAnchor.constraint(equalTo: buttonOpen.bottomAnchor, constant: 35),
            buttonRegister.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            buttonRegister.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
            buttonRegister.heightAnchor.constraint(equalToConstant: 52)
        ])
    }
}
