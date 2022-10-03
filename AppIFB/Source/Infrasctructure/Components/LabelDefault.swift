//
//  LabelDefault.swift
//  AppIFB
//
//  Created by Dario Pintor on 17/08/22.
//

import Foundation
import UIKit

class LabelDefault: UILabel {
    //construtor sobrescrito
    init (text:String) {
        super.init(frame: .zero)
        //chama a função initDefault
        initDefault(text: text)
    }
    
    private func initDefault (text: String){
        //setta o texto recebido como parâmetro na label
        self.text = text
        //permite qeu nós mesmos definimos as constraints
        self.translatesAutoresizingMaskIntoConstraints = false
        //coloca nas labels a cor definidas no TextColor no Asset
        self.textColor = .textColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
