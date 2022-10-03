//
//  userViewModel.swift
//  AppIFB
//
//  Created by Dario Pintor on 03/10/22.
//

import Foundation


class UserViewModel {
    static func sendUser(email: String, password: String) {
        let defaults = UserDefaults.standard
        defaults.set(email, forKey: "email")
    }
    
    static func getUser() -> String {
        let defaults = UserDefaults.standard
        
        if let email = defaults.string(forKey: "email") {
            return email
        }
        
        return String()
    }

}
