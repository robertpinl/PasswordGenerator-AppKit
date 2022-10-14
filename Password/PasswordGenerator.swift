//
//  PasswordGenerator.swift
//  Password
//
//  Created by Robert P on 14.10.2022.
//

import Foundation

struct PasswordGenerator {
    func getPassword(lenght: Int, uppercase: Bool, lowercase: Bool, numbers: Bool, symbols: Bool) -> String {
        var password: [Character] = []
        
        if uppercase {
            for _ in 0...Int.random(in: 2...lenght/4) {
                password.append(CharactersGroup.character(.uppercaseLetter))
            }
        }
        
        if numbers {
            for _ in 0...Int.random(in: 2...lenght/4) {
                password.append(CharactersGroup.character(.number))
            }
        }
        
        if symbols {
            for _ in 0...Int.random(in: 2...lenght/4) {
                password.append(CharactersGroup.character(.symbol))
            }
        }
        
        if lowercase {
            for _ in 0...(lenght - password.count - 1) {
                password.append(CharactersGroup.character(.lowercaseLetter))
            }
        }
        return String(password.shuffled())
    }
}
