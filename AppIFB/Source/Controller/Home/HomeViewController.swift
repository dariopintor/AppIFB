//
//  HomeViewController.swift
//  AppIFB
//
//  Created by Dario Pintor on 28/09/22.
//

import Foundation
import UIKit

class HomeViewController: ViewControllerDefault {
    
    //MARK: - propersties
    
    private lazy var homeView: HomeView = {
       let view = HomeView()
        
        return view
    }()
    
    override func loadView() {
        self.view = homeView
    }
}
