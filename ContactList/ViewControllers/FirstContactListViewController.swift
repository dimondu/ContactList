//
//  ContactsViewController.swift
//  ContactList
//
//  Created by Дмитрий Дуров on 19.07.2022.
//

import UIKit

class FirstContactListViewController: UITableViewController {
    
    var persons: [Person] = []
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactDetailsVC = segue.destination as? ContactDetailViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        contactDetailsVC.contact = persons[indexPath.row]
    }
}
