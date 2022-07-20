//
//  Person.swift
//  ContactList
//
//  Created by Дмитрий Дуров on 19.07.2022.
//
import Foundation

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContact() -> [Person] {
        var persons: [Person] = []
        
        let names = DataStore.data.names.shuffled()
        let surnames = DataStore.data.surnames.shuffled()
        let phones = DataStore.data.phones.shuffled()
        let emails = DataStore.data.emails.shuffled()
        
        for index in 0...(names.count - 1) {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phone: phones[index],
                email: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
}


