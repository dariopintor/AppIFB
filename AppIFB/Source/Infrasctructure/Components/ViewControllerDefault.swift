//
//  ViewControllerDefault.swift
//  AppIFB
//
//  Created by Dario Pintor on 28/09/22.
//

import Foundation
import UIKit



class ViewControllerDefault: UIViewController {
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.hideKeyboardByTappingoutSide))
        
        self.view.addGestureRecognizer(tap)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
    
    @objc
    func hideKeyboardByTappingoutSide() {
        self.view.endEditing(true)
    }
    
    func showMessage(title: String, message: String) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title,
                                          message: message,
                                          preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "OK",
                                          style: UIAlertAction.Style.default,
                                          handler: nil))
            
            self.present(alert, animated: true, completion: nil)
        }
    }
}
