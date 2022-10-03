//
//  UIColor+.swift
//  AppIFB
//
//  Created by Dario Pintor on 19/08/22.
//

import Foundation
import UIKit

//esta classe chama as cores definidas no meu Assets
extension UIColor {
    
    //cria a cor dos text color
    static var textColor: UIColor {
        UIColor(named:"textColor") ?? .black
    }
    //cria a cor do viewBackgroundColor
    static var viewBackgroundColor: UIColor {
        UIColor(named:"viewBackgroundColor") ?? .white
    }
    //cria a cor do buttonBackgroundColor
    static var buttonBackgroundColor: UIColor {
        UIColor(named:"buttonBackgroundColor") ?? .green
    }
    //cria a cor do textFieldBackgroundColor
    static var textFieldBackgroundColor: UIColor {
        UIColor(named:"textFieldBackgroundColor") ?? .green
    }
    //cria a cor do placeHolderColor
    static var placeHolderColor:UIColor {
        UIColor(named:"placeHolderColor") ?? .gray
    }
    static var borderButtonColor:UIColor {
        UIColor(named:"borderButtonColor") ?? .gray
    }
    
}
