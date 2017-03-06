//
//  ImageSelectorViewController.swift
//  AlertProject
//
//  Created by Benny Davidovitz on 27/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ImageSelectorViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func tapAction(_ sender: Any) {
        
        let actionSheet = UIAlertController(title: "select source", message: nil, preferredStyle: .actionSheet)
        
        //cancel button
        actionSheet.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: nil))
        
        func handler(_ action : UIAlertAction){
            //setup image picker
            let picker = UIImagePickerController()
            
            switch action.title!{
            case "photo album":
                picker.sourceType = .photoLibrary
                
            case "rear camera":
                picker.sourceType = .camera
                picker.cameraDevice = .rear
                
            case "front camera":
                picker.sourceType = .camera
                picker.cameraDevice = .front
                
            default:
                return
            }
            
            picker.delegate = self
            
            self.present(picker, animated: true, completion: nil)
            
        }
        //action buttons , all of them are using handler function
        actionSheet.addAction(UIAlertAction(title: "photo album", style: .destructive, handler: handler))
        
        if UIImagePickerController.isCameraDeviceAvailable(.rear){
            actionSheet.addAction(UIAlertAction(title: "rear camera", style: .default, handler: handler))
        }
        
        if UIImagePickerController.isCameraDeviceAvailable(.front){
            actionSheet.addAction(UIAlertAction(title: "front camera", style: .default, handler: handler))
        }
        
        //show 
        self.present(actionSheet, animated: true, completion: nil)
    }
    
    
    
}


extension ImageSelectorViewController : UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        let image = info[UIImagePickerControllerEditedImage] as? UIImage ?? info[UIImagePickerControllerOriginalImage] as? UIImage
        
        picker.dismiss(animated: true) { 
            self.imageView.image = image
        }
        
        //let image = info[UIImagePickerControllerOriginalImage] as? UIImage
        
        //imageView.image = image
        
        //picker.dismiss(animated: true, completion: nil)
        
    }
    
}












