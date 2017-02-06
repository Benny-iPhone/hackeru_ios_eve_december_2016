//
//  ViewController.swift
//  ToastProject
//
//  Created by Benny Davidovitz on 06/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func makeToastAction(_ sender: Any) {
        //toast(text: "hello")
        
        //came from String's extenstion
        //"Good Morning 🎈😀".toast()
        //came from UIView's extenstion
        //self.view.toast("test")
        ToastLabel.show(text: "Good Morning 🎈😀", on: self.view)
        
    }
    


}









