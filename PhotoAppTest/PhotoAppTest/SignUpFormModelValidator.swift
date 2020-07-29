//
//  SignUpFormModelValidatorTests.swift
//  PhotoAppTest
//
//  Created by Veldanov, Anton on 7/28/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation


class SignUpFormModelValidator {
    
    func isFirstNameValid(firstName:String) -> Bool{
        var returnValue = true
        
        if firstName.count < 2{
            return false
        }
        
        
        return returnValue
    }
}
