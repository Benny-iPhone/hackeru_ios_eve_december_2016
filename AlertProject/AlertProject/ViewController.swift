//
//  ViewController.swift
//  AlertProject
//
//  Created by Benny Davidovitz on 27/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {

    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //request location permission
        locationManager.requestWhenInUseAuthorization()
    }
    
    func openSettings(){
        print(#function)
        
        if let url = URL(string: UIApplicationOpenSettingsURLString){
            UIApplication.shared.openURL(url)
        }
        
    }
    
    @IBAction func simpleAlertAction(_ sender: Any) {
        
        let status = CLLocationManager.authorizationStatus()
        guard status == .denied else {
            return
        }
        
        
        let alert = UIAlertController(title: "no location permission", message: "please go to settings and allow location permission", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "later", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "okay", style: .default, handler: { _ in
            self.openSettings()
        }))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    

    
    @IBAction func usernamePasswordAlertAction(_ sender: Any) {
        
        let alert = UIAlertController(title: "login", message: "test message", preferredStyle: .alert)
        
        alert.view.tintColor = .orange
        
        alert.addTextField { (textField) in
            textField.placeholder = "type username"
        }
        
        alert.addTextField {
            $0.placeholder = "type password"
            $0.isSecureTextEntry = true
        }
        
        alert.addAction(UIAlertAction(title: "Login", style: .default, handler: { (_) in
            
            guard let username = alert.textFields?.first?.text,
                let password = alert.textFields?.last?.text else{
                    return
            }
            
            if username == "user" && password == "P455W0RD"{
                print("success login")
            } else {
                print("wrong credentials")
            }
            
            
        }))
        
        
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    

}














