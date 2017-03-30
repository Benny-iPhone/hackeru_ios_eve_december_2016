//
//  BranchesTableViewController.swift
//  LocationProject
//
//  Created by hackeru on 30/03/2017.
//  Copyright © 2017 hackeru. All rights reserved.
//

import UIKit
import CoreLocation

class BranchesTableViewController: UITableViewController {

    var tableArray : [Branch] = Branch.allBranches()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sort()
        NotificationCenter.default.addObserver(self, selector: #selector(handleNotification(_:)), name: .locationNotification, object: nil)
        /*
        NotificationCenter.default.addObserver(forName: <#T##NSNotification.Name?#>, object: <#T##Any?#>, queue: <#T##OperationQueue?#>, using: <#T##(Notification) -> Void#>)
 */
    }
    
    func handleNotification(_ note : Notification){
        sort()
        tableView.reloadData()
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    func sort(){
        tableArray.sort { (b1, b2) -> Bool in
            guard let dist1 = b1.distanceFromCurrentLocation(),
                let dist2 = b2.distanceFromCurrentLocation() else{
                    return true
            }
            
            return dist1 < dist2
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...
        let b = tableArray[indexPath.row]
        cell.textLabel?.text = b.name
        
        if let dist = b.distanceFromCurrentLocation(){
            cell.detailTextLabel?.text = String(format: "%.2f km", dist / 1000)
        } else {
            cell.detailTextLabel?.text = ""
        }
        

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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if let nextVC = segue.destination as? BranchDetailsViewController,
            let indexPath = tableView.indexPathForSelectedRow{
            
            nextVC.branch = tableArray[indexPath.row]
            
        }
        
    }
    

}













