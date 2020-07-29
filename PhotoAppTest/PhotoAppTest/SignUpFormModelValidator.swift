//
//  SignUpFormModelValidatorTests.swift
//  PhotoAppTest
//
//  Created by Veldanov, Anton on 7/28/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation


class SignUpFormModelValidator {
    
    func isFirstNameValid(firstName: String) -> Bool{
        var returnValue = true
        
        if firstName.count < SignUpConstants.firstNameMinLength || firstName.count > SignUpConstants.firstNameMaxLength{
            return false
        }
        
        
        return returnValue
    }
    
    
    func isLastNameValid(lastName: String) -> Bool{
        var returnValue = true
        
        if lastName.count < SignUpConstants.lastNameMinLength || lastName.count > SignUpConstants.lastNameMaxLength{
            return false
        }
        
        
        return returnValue
    }
    
    
    func isPasswordValid(password: String) -> Bool{
        var returnValue = true
        
        if password.count < SignUpConstants.passwordMinLength || password.count > SignUpConstants.passwordMaxLength{
            return false
        }
        
        
        return returnValue
    }
    
    
}
