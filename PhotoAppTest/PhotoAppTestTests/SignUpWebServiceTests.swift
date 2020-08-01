//
//  SignUpWebServiceTests.swift
//  PhotoAppTestTests
//
//  Created by Veldanov, Anton on 7/29/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import XCTest
@testable import PhotoAppTest

class SignUpWebServiceTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }


    
    
    func testSignUpWebService_WhenGivenSuccessfulResponse_ReturnsSuccess(){
        // Arrange
        let sut = SignUpWebService()
        let signUpFormRequestModel = SignUpFormRequestModel(firstName:"Anton", lastName: "Veldanov", email: "test@test.com", password:"12345678")
        sut.signup(withForm: signUpFormRequestModel){ (signUpResponseModel,error) in
            
        }
        
        
        // Act
        
        
        
        // Assert
        
        
        
        
        
    }

}
