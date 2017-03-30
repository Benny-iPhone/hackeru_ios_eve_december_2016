//
//  BranchDetailsViewController.swift
//  LocationProject
//
//  Created by hackeru on 30/03/2017.
//  Copyright © 2017 hackeru. All rights reserved.
//

import UIKit

class BranchDetailsViewController: UIViewController {

    var branch : Branch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = branch.name
    }

    @IBAction func navigateAction(_ sender: Any) {
        let urlString = "waze://?ll=\(branch.location.coordinate.latitude),\(branch.location.coordinate.longitude)&navigate=yes"
        
        let url = URL(string: urlString)!
        UIApplication.shared.openURL(url)
        //only iOS 10 and above
        //UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
