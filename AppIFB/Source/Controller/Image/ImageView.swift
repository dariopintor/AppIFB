//
//  ImageView.swift
//  AppIFB
//
//  Created by Dario Pintor on 05/10/22.
//


import Foundation
import UIKit

class ImageView: ViewDefault {
    //MARK: - Closures
    var onTakePicture:(() -> Void)?
    
    //MARK: - Properts
    lazy var imageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 2
        view.layer.cornerRadius = 125
        view.layer.masksToBounds = true
        view.contentMode = .scaleToFill
        
        //coloca a figura dentro do círculo
        let padding = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
               view.image = UIImage(systemName: "person")?.imageWithInsets(insets: padding)
        
        return view
    }()
    
    lazy var button: ButtonDefault = {
        let button = ButtonDefault(title: "Bater Foto")
        
        button.addTarget(self, action: #selector(takePicture), for: .touchUpInside)
        
        return button
    }()
    
    //MARK: - Inits
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupVisualElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func setupVisualElements() {
        super.setupVisualElements()
        
        self.addSubview(imageView)
        self.addSubview(button)
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 250),
            imageView.widthAnchor.constraint(equalToConstant: 250),
            
            button.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 30),
            button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            button.heightAnchor.constraint(equalToConstant: 50),
            
        ])
    }
    
    //MARK: - Actions
    
    @objc
    func takePicture() {
        self.onTakePicture?()
    }
    
    func setTakedPhoto(photo: UIImage) {
            self.imageView.image = photo
        }
    
    
}
    extension UIImage {
        func imageWithInsets(insets: UIEdgeInsets) -> UIImage? {
            UIGraphicsBeginImageContextWithOptions(
                CGSize(width: self.size.width + insets.left + insets.right,
                       height: self.size.height + insets.top + insets.bottom), false, self.scale)
            let _ = UIGraphicsGetCurrentContext()
            let origin = CGPoint(x: insets.left, y: insets.top)
            self.draw(at: origin)
            let imageWithInsets = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            return imageWithInsets
        }
    }
    


