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
    private var webService: SignUpWebServiceProtocol
    
    init(formModelValidator:SignUpModelValidatorProtocol, webService: SignUpWebServiceProtocol){
        self.formModelValidator = formModelValidator
        self.webService = webService
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
        
        let requestModel = SignUpFormRequestModel(firstName: formModel.firstName, lastName: formModel.lastName, email: formModel.email, password: formModel.password)
        webService.signup(withForm: requestModel) { (responseModel, error) in
            // TODO:
        }
        
    }
    
    
    
}
