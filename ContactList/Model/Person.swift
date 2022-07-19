//
//  Person.swift
//  ContactList
//
//  Created by Дмитрий Дуров on 19.07.2022.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContact() -> [Person] {
        [
            Person(name: "Hana", surname: "Montana", phone: "8", email: "hhh@mail.ru"),
            Person(name: "Hana", surname: "Montana", phone: "8235922", email: "hhh@mail.ru"),
            Person(name: "Hana", surname: "Montana", phone: "822", email: "hhh@mail.ru"),
            Person(name: "Hana", surname: "Montana", phone: "8232", email: "hhh@mail.ru"),
            Person(name: "Hana", surname: "Montana", phone: "444922", email: "hhh@mail.ru"),
            Person(name: "Hana", surname: "Montana", phone: "85555566645922", email: "hhh@mail.ru"),
            Person(name: "Hana", surname: "Montana", phone: "8111112", email: "hhh@mail.ru")
        ]
    }
}

class DataStore {
    
}
