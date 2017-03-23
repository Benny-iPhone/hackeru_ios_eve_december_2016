//
//  ViewController.swift
//  HitList
//
//  Created by Benny Davidovitz on 16/03/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate, NSFetchedResultsControllerDelegate, UISearchBarDelegate{

    @IBOutlet weak var tableView : UITableView!
    
    var controller : NSFetchedResultsController<Person>
    
    required init?(coder aDecoder: NSCoder) {
        
        controller = DBManager.manager.fetchPeople()
        
        super.init(coder: aDecoder)
        
        controller.delegate = self

    }
    
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
    
    @IBAction func aliveSwitchAction(_ sender : UISwitch){
        guard let indexPath = sender.indexPath else {
            return
        }
        
        //update data
        let p : Person = controller.object(at: indexPath)
        p.isAlive = sender.isOn
        
        DBManager.manager.saveContext()
    }
    
    //MARK: - UISearchBar Delegate
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        //reload data
        controller = DBManager.manager.fetchPeople(search: searchText)
        controller.delegate = self
        tableView.reloadData()
        
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        //reload data
        controller = DBManager.manager.fetchPeople()
        controller.delegate = self
        tableView.reloadData()
        //close keyboard
        
        searchBar.resignFirstResponder()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    //MARK: - UITableView Data Source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return controller.sections?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sectionInfo = controller.sections![section]
        return sectionInfo.numberOfObjects
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PersonCell
        
        let p : Person = controller.object(at: indexPath)
        cell.configure(with: p)
        
        //cell.textLabel?.text = p.firstname
        //cell.detailTextLabel?.text = p.lastname
        
        return cell
    }
    
    //MARK: - UITableView Delegate
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        guard editingStyle == .delete else {
            return
        }
        
        let context = DBManager.manager.context
        let p = controller.object(at: indexPath)
        context.delete(p)
        
        DBManager.manager.saveContext()
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //return controller.sections?[section].name
        
        let sectionInfo : NSFetchedResultsSectionInfo? = controller.sections?[section]
        return sectionInfo?.name
    }
    
    //MARK: - NSFetched Results Controller Delegate
    
    func controllerWillChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        self.tableView.beginUpdates()
    }
    
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange sectionInfo: NSFetchedResultsSectionInfo, atSectionIndex sectionIndex: Int, for type: NSFetchedResultsChangeType) {
        switch type {
        case .insert:
            self.tableView.insertSections(IndexSet(integer: sectionIndex), with: .fade)
        case .delete:
            self.tableView.deleteSections(IndexSet(integer: sectionIndex), with: .fade)
        default:
            return
        }
    }
    
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?) {
        switch type {
        case .insert:
            tableView.insertRows(at: [newIndexPath!], with: .left)
        case .delete:
            tableView.deleteRows(at: [indexPath!], with: .right)
        case .update:
            let cell = tableView.cellForRow(at: indexPath!) as? PersonCell
            cell?.configure(with: anObject as! Person)
            
        case .move:
            let cell = tableView.cellForRow(at: indexPath!) as? PersonCell
            cell?.configure(with: anObject as! Person)
            
            tableView.moveRow(at: indexPath!, to: newIndexPath!)
            
            
        }
    }
    
    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        self.tableView.endUpdates()
    }
}



















