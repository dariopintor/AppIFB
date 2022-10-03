//
//  ViewDefault.swift
//  AppIFB
//
//  Created by Dario Pintor on 28/09/22.
//

import Foundation
import UIKit

class ViewDefault: UIView {
 
    
    //MARK: - Initialize
    override init(frame: CGRect) {
        super.init(frame: frame)
        //chama a função do meu UIColor para mudar o fundo
        self.backgroundColor = .viewBackgroundColor
        //inicializa a função para mostrar os elementos na tela
        setupVisualElements()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupVisualElements(){
        
    }
    
}
