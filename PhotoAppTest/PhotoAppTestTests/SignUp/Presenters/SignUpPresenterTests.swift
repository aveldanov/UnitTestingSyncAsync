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
    var signUpFormModel: SignUpFormModel!
    var mockSignUpModelValidator:MockSignUpModelValidator!
    var mockSignupWebService: MockSignUpWebService!
    var sut: SignUpPresenter!
    var mockSignUpViewDelegate: MockSignUpViewDelegate!

    override func setUpWithError() throws {
         signUpFormModel = SignUpFormModel(
            firstName:"Anton",
            lastName: "Veldanov",
            email: "test@test.com",
            password:"12345678",
            repeatPassword:"12345678"
        )
        // mock presenter input
         mockSignUpModelValidator = MockSignUpModelValidator()
         mockSignupWebService = MockSignUpWebService()
        mockSignUpViewDelegate = MockSignUpViewDelegate()

        sut = SignUpPresenter(formModelValidator: mockSignUpModelValidator,
                              webService: mockSignupWebService,
                              delegate: mockSignUpViewDelegate)
    }
    
    override func tearDownWithError() throws {
        signUpFormModel = nil
        mockSignUpModelValidator = nil
        mockSignupWebService = nil
        mockSignUpViewDelegate = nil
        sut = nil
    }
    
    func testSignupPresenter_WhenInformationProvided_WillValidateEachProperty(){
        // Arrange

        
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


        // Act
        sut.processUserSignUp(formModel: signUpFormModel)
        
        
        // Assert
        XCTAssertTrue(mockSignupWebService.isSignupMethodCalled, "The signup() method was not called in the SignupWebService class")
        
    }
    
    
    
    func testSignupPresenter_WhenSignupOperationSuccessful_CallsSuccessOnViewDelegate(){
        // Arrange
        let myExpectation = expectation(description: "Expected the successfulSignup() method to be called")
        
        mockSignUpViewDelegate.expectation = myExpectation
        
        // Act
        sut.processUserSignUp(formModel: signUpFormModel)
        self.wait(for: [myExpectation], timeout: 5)
        
        // Assert
        XCTAssertEqual(mockSignUpViewDelegate.successfullSignUpCounter, 1, "The successfulSignup() method was called more than one time")
        
        
    }
    
    
    func testSignupPresenter_WhenSignupOperationFails_ShouldCallErrorOnDelegate() {
        // Arrange
        let errorHandlerExpectation = expectation(description: "Expected the errorHandler() method to be called")
        mockSignUpViewDelegate.expectation = errorHandlerExpectation
        mockSignupWebService.shouldReturnError = true
                 // Act
        sut.processUserSignUp(formModel: signUpFormModel)
        self.wait(for: [errorHandlerExpectation], timeout: 5)

        // Assert
        XCTAssertEqual(mockSignUpViewDelegate.successfullSignUpCounter, 0)
        XCTAssertEqual(mockSignUpViewDelegate.errorHandlerCounter, 1)
        XCTAssertNotNil(mockSignUpViewDelegate.signUpError)
    }
    
}
