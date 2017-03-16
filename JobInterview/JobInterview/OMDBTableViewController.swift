//
//  OMDBTableViewController.swift
//  JobInterview
//
//  Created by Benny Davidovitz on 09/03/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit
import CCBottomRefreshControl

class OMDBTableViewController: UIViewController , UISearchBarDelegate, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView : UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    var refreshControl : UIRefreshControl?
    var tableArray : [OMDBItem] = []
    var page = 1
    var name : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.refreshControl = UIRefreshControl()
        refreshControl?.addTarget(self, action: #selector(refreshAction), for: .valueChanged)
        tableView.addSubview(refreshControl!)
        
        let rControl = UIRefreshControl()
        rControl.triggerVerticalOffset = 100
        rControl.addTarget(self, action: #selector(nextPageAction), for: .valueChanged)
        self.tableView.bottomRefreshControl = rControl
        
        //navigationItem.title = "Ofer"

    }
    
    func nextPageAction(){
        reloadData()
    }
    
    func refreshAction(){
        self.page = 1
        reloadData()
    }

    func reloadData(){
        func handleError(){
            self.refreshControl?.endRefreshing()
            self.tableView.bottomRefreshControl?.endRefreshing()
            self.tableArray = []
            self.tableView.reloadData()
        }
        
        guard let name = name else {
            handleError()
            return
        }
        
        AppManager.manager.search(by: name, page : page) { (err, arr, total) in
            
            if let total = total{ //total not nil
                self.navigationItem.title = "\(total) results"
            } else {
                self.navigationItem.title = ""
            }

            guard let arr = arr else {
                print(err ?? "")
                handleError()
                return
            }
            
            if arr.isEmpty && self.page == 1{
                print("empty array")
                handleError()
                return
            }
            /*
            guard !arr.isEmpty else {
                print("empty array")
                handleError()
                return
            }*/
            
            self.refreshControl?.endRefreshing()
            self.tableView.bottomRefreshControl?.endRefreshing()
            
            if self.page == 1{
                self.tableArray = arr
            } else {
                self.tableArray += arr
            }
            
            self.tableView.reloadData()
            
            self.page += 1
            
        }
    }
    
    // MARK: - Search Bar Delegate
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.page = 1
        name = searchBar.text
        reloadData()
        searchBar.resignFirstResponder()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        name = nil
        reloadData()
        searchBar.resignFirstResponder()
    }
    
    
    // MARK: - Table view data source

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! OMDBItemCell

        // Configure the cell...
        cell.configure(with: tableArray[indexPath.row])

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.

        if let nextVC = segue.destination as? DetailsViewController,
            let indexPath = tableView.indexPathForSelectedRow{
            
            nextVC.item = tableArray[indexPath.row]
            
        }
        
    }
 

}

















