//
//  ContactCoordenator.swift
//  AppIFB
//
//  Created by Dario Pintor on 05/10/22.
//

import Foundation
import UIKit
class ContactCoordinator: Coordinator {
    
    private let navigationController: UINavigationController
    var contactViewModel: ContactViewModel?
    
    lazy var contactViewController: ContatctViewController = {
        let viewController = ContatctViewController()
        
        viewController.tabBarItem.title = "Contato"
        viewController.tabBarItem.image = UIImage(systemName: "person.2")
        
        viewController.onSaveContact = {name, phone in
            _ = ContactViewModel(name, phone)
            
        }
        
        return viewController
    }()
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
    
}

