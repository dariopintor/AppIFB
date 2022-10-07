//
//  ContactView.swift
//  AppIFB
//
//  Created by Dario Pintor on 06/10/22.
//

import Foundation
import UIKit

class ContactViewModel {
   static var listContact: [ContactModel] = [ContactModel]()
    
    
    init(_ name: String, _ phone: String){
        ContactViewModel.listContact.append(ContactModel( name,  phone))
    }
}
