//
//  ViewController.swift
//  ReadAssist
//
//  Created by Nisarg Shah on 2023-01-30.
//

import UIKit
import Photos
import PhotosUI
import TesseractOCR

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var UIImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func ImagePicker(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.allowsEditing = true
        picker.delegate = self
        present(picker,animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.originalImage] as? UIImage else {return}
        UIImageView.image = image
        dismiss(animated: true)
        
        
    }
    
    
    
}
