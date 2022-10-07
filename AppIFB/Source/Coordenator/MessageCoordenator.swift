//
//  MessageCoordenator.swift
//  AppIFB
//
//  Created by Dario Pintor on 05/10/22.
//

import Foundation
import UIKit
class MessageCoordinator: Coordinator {
    
    private let navigationController: UINavigationController
    
    lazy var messageViewController: MessageViewController = {
        let viewController = MessageViewController()
        viewController.tabBarItem.title = "Mensagem"
        viewController.tabBarItem.image = UIImage(systemName: "message")
        
        return viewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
    
}

