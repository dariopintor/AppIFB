//
//  TextFieldDefault.swift
//  AppIFB
//
//  Created by Dario Pintor on 19/08/22.
//

import Foundation
import UIKit

class  TextFieldDefault: UITextField{

    init(placeholder:String){
        super.init(frame: .zero)
        iniDefault(placeholder: placeholder, keyboardType: .default , returnKeyType: .default)
    }
    
    init(placeholder:String,keyboardType: UIKeyboardType, returnKeyType: UIReturnKeyType){
        super.init(frame: .zero)
        iniDefault(placeholder: placeholder, keyboardType: keyboardType , returnKeyType: returnKeyType)
    }
    
    
    private func iniDefault(placeholder: String, keyboardType: UIKeyboardType, returnKeyType: UIReturnKeyType ){
        self.textColor = .textColor
        self.backgroundColor = .textFieldBackgroundColor
        self.placeholder = placeholder
        self.layer.cornerRadius = 4
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.black.cgColor
        self.keyboardType = keyboardType
        self.returnKeyType = returnKeyType
        //permite defini a cor de fundo do placehold
        self.attributedPlaceholder = NSAttributedString(
                   string: placeholder,
                   attributes: [NSAttributedString.Key.foregroundColor: UIColor.placeHolderColor])
    
    //permite qeu nós mesmos definimos as constraints
    self.translatesAutoresizingMaskIntoConstraints = false
    
}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // adicionando paddding ao UITextField placeholder
       let padding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 5)
       override open func textRect(forBounds bounds: CGRect) -> CGRect {
           return bounds.inset(by: padding)
       }
       
       override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
           return bounds.inset(by: padding)
       }
       
       override open func editingRect(forBounds bounds: CGRect) -> CGRect {
           return bounds.inset(by: padding)
       }
   
}
