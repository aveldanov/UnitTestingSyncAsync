//
//  SignUpPresenter.swift
//  PhotoAppTest
//
//  Created by Veldanov, Anton on 8/7/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation

class SignUpPresenter{
    
    private var formModelValidator: SignUpModelValidatorProtocol
    private var webSerive: SignUpWebServiceProtocol
    
    init(formModelValidator:SignUpModelValidatorProtocol, webSerive: SignUpWebServiceProtocol){
        self.formModelValidator = formModelValidator
        self.webSerive = webSerive
    }
    
    
    func processUserSignUp(formModel: SignUpFormModel){
        if !formModelValidator.isFirstNameValid(firstName: formModel.firstName){
            return 
        }
        
        if !formModelValidator.isLastNameValid(lastName: formModel.lastName){
            return
        }
        
        if !formModelValidator.isValidEmailFormat(email: formModel.email){
            return
        }
        
        if !formModelValidator.isPasswordValid(password: formModel.password){
            
            return
        }
        
        if !formModelValidator.doPasswordsMatch(password: formModel.password, repeatPassword: formModel.repeatPassword){
            return

        }
        
        
    }
    
    
    
}
