//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Дмитрий Дуров on 24.07.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    // MARK: - Navigation
    private func setupViewControllers(){
        guard let firstContactListVC = viewControllers?.first as? FirstContactListViewController else { return }
        guard let secondContactListVC = viewControllers?.last as? SecondContactListViewController else { return }
        
        let personList = Person.getContact()
        
        firstContactListVC.persons = personList
        secondContactListVC.persons = personList
    }
    
    
}
