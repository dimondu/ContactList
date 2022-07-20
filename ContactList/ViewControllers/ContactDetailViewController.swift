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
        
        title = contact.fullName
        phoneLabel.text = "Phone: \(contact.phone)"
        emailLabel.text = "Email: \(contact.email)"
    }
}
