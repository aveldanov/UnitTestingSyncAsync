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
        XCTAssertFalse(isFirstNameValid,"the isFirstNameValid should return FALSE for the first name shorter than 2 chars but it returned TRUE")
        
    }


    func testSignUpFormModelValidator_WhenTooLongNameIsProvided_ShouldReturnFalse(){
        //Arrange
        
        //Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "S")
        
        //Assert
        XCTAssertFalse(isFirstNameValid,"the isFirstNameValid should return FALSE for the first name shorter than 2 chars but it returned TRUE")
        
    }
    

}
