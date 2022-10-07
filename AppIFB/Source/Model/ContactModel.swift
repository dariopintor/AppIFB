//
//  ContactModel.swift
//  AppIFB
//
//  Created by Dario Pintor on 06/10/22.
//

import Foundation
import UIKit

struct ContactModel {
    let name: String
    let phone: String
    
    init () {
        self.name = String()
        self.phone = String()
    }
    
    init(_ name: String, _ phone: String) {
        self.name = name
        self.phone = phone
    }
}
