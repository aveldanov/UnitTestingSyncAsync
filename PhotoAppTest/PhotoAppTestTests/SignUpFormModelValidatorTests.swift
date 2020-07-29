//
//  SignUpFormModelValidator.swift
//  PhotoAppTestTests
//
//  Created by Veldanov, Anton on 7/28/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import XCTest

@testable import PhotoAppTest

class SignUpFormModelValidatorTests: XCTestCase {
    var sut:SignUpFormModelValidator!
    
    override func setUpWithError() throws {
        sut = SignUpFormModelValidator()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testSignUpFormModelValidator_WhenValidFirstNameIsProvided_ShouldReturnTrue(){
        //Arrage
        
        //Act
        let isFirstNameValid = sut.isFirstNameValid(firstName:"Anton")
        
        //Assert
        XCTAssertTrue(isFirstNameValid,"The isFirstNameValid should return TRUE, but returned FALSE")
        
        
    }
    
    func testSignUpFormModelValidator_WhenTooShortNameIsProvided_ShouldReturnFalse(){
        //Arrange
        
        //Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "S")
        
        //Assert
        XCTAssertFalse(isFirstNameValid,"the isFirstNameValid should return FALSE for the first name shorter than \(SignUpConstants.firstNameMinLength) chars but it returned TRUE")
        
    }


    func testSignUpFormModelValidator_WhenTooLongNameIsProvided_ShouldReturnFalse(){
        //Arrange
        
        //Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "AntonAntonAntonAntonAntonAntonAntonAnton")
        
        //Assert
        XCTAssertFalse(isFirstNameValid,"the isFirstNameValid should return FALSE for the first name is longer than \(SignUpConstants.firstNameMaxLength) chars but it returned TRUE")
        
    }
    
    
    
    
    
    func testSignUpFormModelValidator_WhenTooShortLastNameIsProvided_ShouldReturnFalse(){
        //Arrange
        
        //Act
        let isLastNameValid = sut.isLastNameValid(lastName: "S")
        
        //Assert
        XCTAssertFalse(isLastNameValid,"the isFirstNameValid should return FALSE for the first name shorter than \(SignUpConstants.lastNameMinLength) chars but it returned TRUE")
        
    }
    
    
    func testSignUpFormModelValidator_WhenTooLongLastNameIsProvided_ShouldReturnFalse(){
        //Arrange
        
        //Act
        let isLastNameValid = sut.isLastNameValid(lastName: "AntonAntonAntonAntonAntonAntonAntonAnton")
        
        //Assert
        XCTAssertFalse(isLastNameValid,"the isFirstNameValid should return FALSE for the first name is longer than \(SignUpConstants.lastNameMaxLength) chars but it returned TRUE")
        
    }
    
    
    
    
    
    func testSignUpFormModelValidator_WhenTooShortPasswordIsProvided_ShouldReturnFalse(){
        //Arrange
        
        //Act
        let isPasswordValid = sut.isPasswordValid(password: "S")
        
        //Assert
        XCTAssertFalse(isPasswordValid,"the isFirstNameValid should return FALSE for the first name shorter than \(SignUpConstants.passwordMinLength) chars but it returned TRUE")
        
    }
    
    
    func testSignUpFormModelValidator_WhenTooLongPasswordIsProvided_ShouldReturnFalse(){
        //Arrange
        
        //Act
        let isPasswordValid = sut.isPasswordValid(password: "AntonAntonAntonAntonAntonAntonAntonAnton")
        
        //Assert
        XCTAssertFalse(isPasswordValid,"the isFirstNameValid should return FALSE for the first name is longer than \(SignUpConstants.passwordMaxLength) chars but it returned TRUE")
        
    }
    
    
    
    func testSignUpFormModelValidator_WhenEqualPasswordIsProvided_ShouldReturnTrue(){
        //Arrange
        
        //Act
        let doPasswordsMatch = sut.doPassowrdsMatch(password: "12345678", repeatPassword:"12345678")
        
        //Assert
        XCTAssertFalse(isPasswordValid,"the isFirstNameValid should return FALSE for the first name is longer than \(SignUpConstants.passwordMaxLength) chars but it returned TRUE")
        
    }
    

}
