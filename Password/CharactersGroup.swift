//
//  CharactersGroup.swift
//  Password
//
//  Created by Robert P on 14.10.2022.
//

import Foundation

enum CharactersGroup {
    case lowercaseLetter
    case uppercaseLetter
    case number
    case symbol
}

extension CharactersGroup {
     static func character(_ group: CharactersGroup) -> Character {
        switch group {
        case .lowercaseLetter:
            return "abcdefghijklmnopqrstuvwxyz".randomElement()!
        case .uppercaseLetter:
            return "ABCDEFGHIJKLMNOPQRSTUVWXYZ".randomElement()!
        case .number:
            return "0123456789".randomElement()!
        case .symbol:
            return ";&%$@#*?!".randomElement()!
        }
    }
}
