//
//  SignUpPresenterTests.swift
//  PhotoAppTestTests
//
//  Created by Veldanov, Anton on 8/7/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import XCTest
@testable import PhotoAppTest


class SignUpPresenterTests: XCTestCase {
    
    override func setUpWithError() throws {

    }
    
    override func tearDownWithError() throws {
        
    }
    
    
    func testSignupPresenter_WhenInformationProvided_WillValidateEachProperty(){
        // Arrange
        let signUpFormModel = SignUpFormModel(
            firstName:"Anton",
            lastName: "Veldanov",
            email: "test@test.com",
            password:"12345678",
            repeatPassword:"12345678"
        )
        // mock presenter input
        let mockSignUpModelValidator = MockSignUpModelValidator()
        let sut = SignUpPresenter(formModelValidator: mockSignUpModelValidator)
        // Act
        
        sut.processUserSignUp(formModel: signUpFormModel)
        
        // Assert
        
        XCTAssertTrue(mockSignUpModelValidator.isFirstNameValidated,"First name was not validated")
        XCTAssertTrue(mockSignUpModelValidator.isLastNameValidated, "Last name was not validated")
        XCTAssertTrue(mockSignUpModelValidator.isEmailValidated, "Email format was not validated")
        XCTAssertTrue(mockSignUpModelValidator.isPasswordValidated, "Password was not validated")
        XCTAssertTrue(mockSignUpModelValidator.isPasswordRepeatValidated, "Did not validate if passwords match")
        
    }
    
    func testSignupPresenter_WhenGivenValidFormModel_ShouldCallSignupMethod(){
        // Arrange
        let signUpFormModel = SignUpFormModel(
            firstName:"Anton",
            lastName: "Veldanov",
            email: "test@test.com",
            password:"12345678",
            repeatPassword:"12345678"
        )
        // mock presenter input
        let mockSignUpModelValidator = MockSignUpModelValidator()
        let sut = SignUpPresenter(formModelValidator: mockSignUpModelValidator)
        
        // Act
        sut.processUserSignUp(formModel: signUpFormModel)
        
        
        // Assert
        XCTAssertTrue(mockSignupWebService.isSignupMethodCalled, "The signup() method was not called in the SignupWebService class")
        
        
    }
    
}
