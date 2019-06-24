//
//  ViewController.swift
//  cameraPractice
//
//  Created by Apple on 6/24/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var newScreen = UIImagePickerController()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        newScreen.delegate = self
        // tells the screen to change to what we tell it
    }

    @IBAction func takePhotoTapped(_ sender: UIButton) {
        newScreen.sourceType = .camera
        present(newScreen, animated: true, completion: nil)
    }
    
    @IBAction func photoLibrary(_ sender: UIButton) {
        newScreen.sourceType = .photoLibrary
        present(newScreen, animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var photoTaken: UIImageView!
    //our last step!
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            photoTaken.image = selectedImage
        }
        
        newScreen.dismiss(animated: true, completion: nil)
    }
    
    
}

