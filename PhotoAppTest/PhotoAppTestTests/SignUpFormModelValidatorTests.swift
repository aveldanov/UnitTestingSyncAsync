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

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSignUpFormModelValidator_WhenValidFirstNameIsProvided_ShouldReturnTrue(){
        //Arrage
        let sut = SignUpFormModelValidator()
        
        //Act
        
        sut.isFirstNameValid(firstName:"Anton")
        
        //Assert
        
    }
    
    func testSome(){
        
        
        
    }



}
