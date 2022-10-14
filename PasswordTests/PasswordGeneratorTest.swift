//
//  PasswordTests.swift
//  PasswordTests
//
//  Created by Robert P on 15.10.2022.
//

import XCTest
@testable import Password

final class PasswordTests: XCTestCase {
    
    var sut: PasswordGenerator!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = PasswordGenerator()
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }

    func testGeneratePassword_isRandom_true() {
        // given
        let lenght = 18
        let uppercase = true
        let lowercase = true
        let numbers = true
        let symbols = true
        
        // when
        let firstPassword = sut.getPassword(lenght: lenght, uppercase: uppercase, lowercase: lowercase, numbers: numbers, symbols: symbols)
        let secondPassword = sut.getPassword(lenght: lenght, uppercase: uppercase, lowercase: lowercase, numbers: numbers, symbols: symbols)
        let result = firstPassword != secondPassword
        
        // then
        XCTAssertTrue(result)
    }
    
    func testPasswordLenght_isCorrect_Eighteen() {
        // given
        let lenght = 18
        let uppercase = true
        let lowercase = true
        let numbers = true
        let symbols = true
        
        // when
        let password = sut.getPassword(lenght: lenght, uppercase: uppercase, lowercase: lowercase, numbers: numbers, symbols: symbols)
        let passwordLenght = password.count
        
        // then
        XCTAssertEqual(passwordLenght, lenght)
    }
}
