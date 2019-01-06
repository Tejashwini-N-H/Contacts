//
//  ContactsDetailViewController.swift
//  Contacts
//
//  Created by tejashwini on 06/01/19.
//  Copyright © 2019 tecmax. All rights reserved.
//

import UIKit

class ContactsDetailViewController: UIViewController {
   var contact : Contact? = nil
    var isDeleted : Bool = false
    var indexPath : IndexPath? = nil
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var contactNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      nameLabel.text = contact?.name
        contactNumberLabel.text = contact?.contactNumber
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func done(_ sender: Any) {
        performSegue(withIdentifier: "unwindToContact", sender: self)
    }
    
    @IBAction func deleteContact(_ sender: UIButton) {
        isDeleted = true
        performSegue(withIdentifier: "unwindToContact", sender: self)
    }
    
}
