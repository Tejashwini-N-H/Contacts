//
//  CreateContactViewController.swift
//  Contacts
//
//  Created by tejashwini on 06/01/19.
//  Copyright © 2019 tecmax. All rights reserved.
//

import UIKit

class CreateContactViewController: UIViewController {
   var titletextlabel = "Create Contact"
    @IBOutlet weak var titletext: UINavigationItem!
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var surnameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var mobileTextField: UITextField!
    
    var contact : Contact? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    titletext.title = titletextlabel
        if let contact = contact {
            firstNameTextField.text = contact.name
            mobileTextField.text = contact.contactNumber
        }
        // Do any additional setup after loading the view.
    }
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

     @IBAction func saveContact(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "unwindToContact", sender: self)
     }
     // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    @IBAction func close(_ sender: UIBarButtonItem) {
        firstNameTextField.text = nil
        mobileTextField.text = nil
        performSegue(withIdentifier: "unwindToContact", sender: self)
    }
    
}
