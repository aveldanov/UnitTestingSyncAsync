//
//  MockSignUpModelValidator.swift
//  PhotoAppTestTests
//
//  Created by Veldanov, Anton on 8/7/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation
@testable import PhotoAppTest


class MockSignUpModelValidator: SignUpModelValidatorProtocol{
    var isFirstNameValidated: Bool = false
    var isLastNameValidated: Bool = false
    var isEmailValidated: Bool = false
    var isPasswordValidated: Bool = false
    var isPasswordRepeatValidated: Bool = false

    //Mocking - make all methods return predefined value
    func isFirstNameValid(firstName: String) -> Bool {
        isFirstNameValidated = true
        return isFirstNameValidated
    }
    
    func isLastNameValid(lastName: String) -> Bool {
        isLastNameValidated = true
        return isLastNameValidated

    }
    
    func isValidEmailFormat(email: String) -> Bool {
        isEmailValidated = true
        return isEmailValidated

    }
    
    func isPasswordValid(password: String) -> Bool {
        isPasswordValidated = true
        return isPasswordValidated

    }
    
    func doPasswordsMatch(password: String, repeatPassword: String) -> Bool {
        isPasswordRepeatValidated = true
        return isPasswordRepeatValidated

    }
    
    
    
}
