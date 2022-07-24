//
//  DataStore.swift
//  ContactList
//
//  Created by Дмитрий Дуров on 19.07.2022.
//

import Foundation

class DataStore {
    
    static let shared = DataStore()
    
    let names = [
        "Igor",
        "Alexey",
        "Dmitrii",
        "Sergey",
        "Anna",
        "Svetlana",
        "Genadii",
        "Julia",
        "Conor",
        "Natalia",
        "Ledi",
        "Britney"
    ]
    
    let surnames = [
        "Kuksov",
        "Spirs",
        "Gaga",
        "Malevich",
        "Efimov",
        "MacGregor",
        "Sergun",
        "Brun",
        "Roberts",
        "Loboda",
        "Oreiro",
        "Backham"
    ]
    
    let phones = [
        "89112222222",
        "89113333333",
        "89219999999",
        "89538888888",
        "89227777777",
        "89226666666",
        "89333333333",
        "89127384665",
        "89438886633",
        "89343456738",
        "89217809898",
        "89217809444"
    ]
    
    let emails = [
        "aaa@mail.ru",
        "bbb@mail.ru",
        "ccc@mail.ru",
        "ddd@mail.ru",
        "eee@mail.ru",
        "fff@mail.ru",
        "ggg@mail.ru",
        "hhh@mail.ru",
        "rr@mail.ru",
        "aaccc@mail.ru",
        "zzz@mail.ru",
        "xxxx@mail.ru"
    ]
    
    private init() {}
    
}
