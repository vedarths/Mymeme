//
//  ViewController.swift
//  MyVMeme
//
//  Created by Vedarth Solutions on 4/18/18.
//  Copyright © 2018 Vedarth Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    //outlets
    @IBOutlet weak var cancelButton: UIBarButtonItem!
    @IBOutlet weak var galleryButton: UIBarButtonItem!
    @IBOutlet weak var cameraButton: UIBarButtonItem!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var topText: UITextField!
    @IBOutlet weak var shareButton: UIBarButtonItem!
    @IBOutlet weak var bottomText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func cancelPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func pickFromGallery(_ sender: Any) {
        presentAnImageWithSourceType(sourceType: UIImagePickerControllerSourceType.photoLibrary)
    }
    
    @IBAction func pickFromCamera(_ sender: Any) {
        presentAnImageWithSourceType(sourceType: UIImagePickerControllerSourceType.camera)
    }
    
    private func presentAnImageWithSourceType(sourceType: UIImagePickerControllerSourceType) {
        if UIImagePickerController.isSourceTypeAvailable(sourceType) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate=self
            present(imagePicker, animated: true, completion: nil)
        }
        
    }

}

