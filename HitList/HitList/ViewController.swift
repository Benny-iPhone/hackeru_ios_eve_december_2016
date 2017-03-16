//
//  ViewController.swift
//  HitList
//
//  Created by Benny Davidovitz on 16/03/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func addAction(_ sender: Any) {
        
        let alert = UIAlertController(title: "Add 'Friend'", message: nil, preferredStyle: .alert)
        
        alert.addTextField {
            $0.placeholder = "first name"
        }
        
        alert.addTextField {
            $0.placeholder = "last name"
        }
        
        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: { _ in
            
            let firstname = alert.textFields?.first?.text
            let lastname = alert.textFields?.last?.text
            
            let context = DBManager.manager.context
            let p = Person(context: context)
            
            p.firstname = firstname
            p.lastname = lastname
            p.isAlive = true
            
            DBManager.manager.saveContext()
            
        }))
      
        alert.addAction(UIAlertAction(title: "spare him", style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    

}













