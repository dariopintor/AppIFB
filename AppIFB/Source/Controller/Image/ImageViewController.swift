//
//  ImageViewController.swift
//  AppIFB
//
//  Created by Dario Pintor on 05/10/22.
//

import Foundation
import UIKit

class ImageViewController: ViewControllerDefault {
    //MARK: - Closures
   // var onTakePicture:(()->Void)?
    var onSavePhoto:((_ photo: UIImage) -> Void)?
    
    private lazy var imageView: ImageView = {
        
        let view = ImageView()
        
        view.onTakePicture = {
            self.showAlert()
        }
        
        return view
    }()
    
    override func loadView() {
        self.view = imageView
    }
}

//MARK:- Image Picker
extension ImageViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    //Show alert to selected the media source type.
    private func showAlert() {
        let alert = UIAlertController(title: "Selecione a Imagem", message: "Qual a origem da image?", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: {(action: UIAlertAction) in
            self.getImage(fromSourceType: .camera)
        }))
        alert.addAction(UIAlertAction(title: "Album de Fotos", style: .default, handler: {(action: UIAlertAction) in
            self.getImage(fromSourceType: .photoLibrary)
        }))
        alert.addAction(UIAlertAction(title: "Cancelar", style: .destructive, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

    //get image from source type
    private func getImage(fromSourceType sourceType: UIImagePickerController.SourceType) {

        //Check is source type available
        if UIImagePickerController.isSourceTypeAvailable(sourceType) {

            let imagePickerController = UIImagePickerController()
            imagePickerController.delegate = self
            imagePickerController.sourceType = sourceType
            self.present(imagePickerController, animated: true, completion: nil)
        }
    }

    //MARK:- UIImagePickerViewDelegate.
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        self.dismiss(animated: true) { [weak self] in

            guard let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else { return }
            //Setting image to your image view
            self?.onSavePhoto?(image)
            self?.imageView.setTakedPhoto(photo: image)
        }
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }

}
