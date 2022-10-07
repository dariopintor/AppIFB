//
//  ContatctViewController.swift
//  AppIFB
//
//  Created by Dario Pintor on 05/10/22.
//

import Foundation
import UIKit

class ContatctViewController: ViewControllerDefault {
    //MARK: - Closures
    var onSaveContact:((_ name:String, _ phone: String) -> Void)?
    
    private lazy var contactView: ContactView = {
        let view = ContactView()
        
        view.onSaveContact = {[ weak self] name, phone in
            if let self = self {
                self.onSaveContact?(name, phone)
                
                print(" Total de Itens :\(ContactViewModel.listContact.count)")
            }
        }
        return view
    }()
    
    override func loadView() {
        self.view = contactView
    }
}
