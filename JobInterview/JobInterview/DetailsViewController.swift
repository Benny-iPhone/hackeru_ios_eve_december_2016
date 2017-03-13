//
//  DetailsViewController.swift
//  JobInterview
//
//  Created by Benny Davidovitz on 13/03/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var item : OMDBItem!

    @IBOutlet weak var plotTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //config UI
        navigationItem.title = item.title
        
        plotTextView.text = item.plot
        
        if item.plot != nil{
            //data alreay fetched
            return
        }
        
        //fetch details data
        AppManager.manager.getDetails(of: item) { (err, item) in
            self.plotTextView.text = item?.plot
        }
        
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
