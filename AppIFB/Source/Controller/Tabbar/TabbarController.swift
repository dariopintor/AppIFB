//
//  TabbarController.swift
//  AppIFB
//
//  Created by Dario Pintor on 05/10/22.
//

import Foundation
import UIKit

class TabbarController: UITabBarController {
    override func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool) {
        super.setViewControllers(viewControllers, animated: true)
        
        self.tabBar.tintColor = .buttonBackgroundColor
        self.tabBar.isTranslucent = true
        UITabBar.appearance().barTintColor = .viewBackgroundColor
    }
    
}
