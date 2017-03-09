//
//  OMDBTableViewController.swift
//  JobInterview
//
//  Created by Benny Davidovitz on 09/03/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit
import CCBottomRefreshControl

class OMDBTableViewController: UITableViewController , UISearchBarDelegate{

    @IBOutlet weak var searchBar: UISearchBar!
    var tableArray : [OMDBItem] = []
    var page = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.refreshControl = UIRefreshControl()
        refreshControl?.addTarget(self, action: #selector(refreshAction), for: .valueChanged)
        
        let rControl = UIRefreshControl()
        rControl.triggerVerticalOffset = 100
        rControl.addTarget(self, action: #selector(nextPageAction), for: .valueChanged)
        self.tableView.bottomRefreshControl = rControl
    }
    
    func nextPageAction(){
        reloadData(with: searchBar.text)
    }
    
    func refreshAction(){
        self.page = 1
        reloadData(with: searchBar.text)
    }

    func reloadData(with name : String?){
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
        
        AppManager.manager.search(by: name, page : page) { (err, arr) in
            guard let arr = arr else {
                print(err)
                handleError()
                return
            }
            
            guard !arr.isEmpty else {
                print("empty array")
                handleError()
                return
            }
            
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
        reloadData(with: searchBar.text)
        searchBar.resignFirstResponder()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        reloadData(with: nil)
        searchBar.resignFirstResponder()
    }
    
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! OMDBItemCell

        // Configure the cell...
        cell.configure(with: tableArray[indexPath.row])

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
