//
//  ContactsTableViewController.swift
//  Contacts
//
//  Created by tejashwini on 06/01/19.
//  Copyright © 2019 tecmax. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    
    var contacts : [Contact] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
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
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let contact = contacts[indexPath.row]
        cell.textLabel?.text = contact.name
        cell.detailTextLabel?.text = contact.contactNumber
        
        return cell
    }
    // unwind segue
    @IBAction func unwindToContact(segue: UIStoryboardSegue) {
        guard let viewController = segue.source as? CreateContactViewController else {return}
        guard let name = viewController.firstNameTextField.text else { return }
        guard let number = viewController.mobileTextField.text  else {return }
        let contact = Contact(name : name, contactNumber: number)
        contacts.append(contact)
        tableView.reloadData()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "contactDetailSegue" {
      guard  let viewController = segue.destination as? ContactsDetailViewController else { return }
            guard     let indexPath = tableView.indexPathForSelectedRow else {return}
            
            let contact = contacts[indexPath.row]
            viewController.contact = contact
            
        
        }
    }

}
