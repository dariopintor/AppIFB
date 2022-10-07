//
//  TabbarCoordinator.swift
//  AppIFB
//
//  Created by Dario Pintor on 05/10/22.
//

import Foundation
import UIKit

class TabbarCoordinator: Coordinator {
  
    
    let navigationController: UINavigationController
    
    init (navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        //tabbar
        let tabbarConroller = TabbarController()
        
        //view da tabBar
        let homeViewCoordinator = HomeCoordinator (navigationController: self.navigationController)
        
        let imageViewController = ImageCoordenator(navigationController: self.navigationController)
        
        let contactCoodenator = ContactCoordinator(navigationController: self.navigationController)
        
        let messageCoodenator = MessageCoordinator(navigationController: self.navigationController)
          
        tabbarConroller.setViewControllers([homeViewCoordinator.homeViewController, imageViewController.imageViewController, contactCoodenator.contactViewController,
            messageCoodenator.messageViewController], animated: true)
        
        self.navigationController.pushViewController(tabbarConroller,  animated: true)
    }
}
