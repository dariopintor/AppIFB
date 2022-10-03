//
//  File.swift
//  AppIFB
//
//  Created by Dario Pintor on 21/09/22.
//

import Foundation
import UIKit
class ButtonDefault: UIButton {
    
    init(title:String) {
        super.init(frame: .zero)
        initDefault(title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(title: String) {
        self.setTitle(title, for: .normal)
        self.backgroundColor = .buttonBackgroundColor
        self.layer.cornerRadius = 10
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.borderButtonColor.cgColor
        self.translatesAutoresizingMaskIntoConstraints = false
            
        }
    }
    
    

