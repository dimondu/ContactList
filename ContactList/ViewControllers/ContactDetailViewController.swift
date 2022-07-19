//
//  ContactDetailViewController.swift
//  ContactList
//
//  Created by Дмитрий Дуров on 19.07.2022.
//

import UIKit

class ContactDetailViewController: UIViewController {
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = contact.fullName
        phoneLabel.text = contact.phone
        emailLabel.text = contact.email
        
        
    }
    
    
    
}
