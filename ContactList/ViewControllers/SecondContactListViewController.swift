//
//  SecondContactListViewController.swift
//  ContactList
//
//  Created by Дмитрий Дуров on 19.07.2022.
//

import UIKit

class SecondContactListViewController: UITableViewController {
    let personList = Person.getContact()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return personList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return personList[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row % 2 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "phone", for: indexPath)
            let person = personList[indexPath.row]
            
            var content = cell.defaultContentConfiguration()
            content.image = UIImage(systemName: "phone")
            content.text = person.phone
            cell.contentConfiguration = content
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "phone", for: indexPath)
            let person = personList[indexPath.row]
            
            var content = cell.defaultContentConfiguration()
            content.image = UIImage(systemName: "tray")
            content.text = person.email
            cell.contentConfiguration = content
            
            return cell
        }
    }
}
