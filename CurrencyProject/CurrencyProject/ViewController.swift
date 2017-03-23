//
//  ViewController.swift
//  CurrencyProject
//
//  Created by hackeru on 23/03/2017.
//  Copyright © 2017 hackeru. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{

    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var tableView: UITableView!
    
    var tableArray : [Currency] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchData()
    }
    
    func fetchData(){
        AppManager.manager.fetch { (err, res) in
            guard let res = res else{
                print(err ?? "")
                return
            }
            
            self.dateLabel.text = res.date
            self.navigationItem.title = res.base
            self.tableArray = res.rates
            self.tableView.reloadData()
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CurrencyCell
        
        cell.configure(with: tableArray[indexPath.row])
        
        return cell
    }


}












