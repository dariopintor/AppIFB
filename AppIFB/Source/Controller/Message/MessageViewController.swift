//
//  MessageViewController.swift
//  AppIFB
//
//  Created by Dario Pintor on 05/10/22.
//

import Foundation
class MessageViewController: ViewControllerDefault {
    //MARK: - Closures
    
    
    private lazy var messageView: MessageView = {
        let view = MessageView()
        
        return view
    }()
    
    override func loadView() {
        self.view = messageView
    }
}
