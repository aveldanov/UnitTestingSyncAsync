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
    
    var sut: SignUpWebService!
    var signUpFormRequestModel: SignUpFormRequestModel!
    
    override func setUpWithError() throws {
        let config = URLSessionConfiguration.ephemeral
        config.protocolClasses = [MockURLProtocol.self]
        let urlSession = URLSession(configuration: config)
        sut = SignUpWebService(urlString: SignUpConstants.signUpURLString, urlSession: urlSession)
        signUpFormRequestModel = SignUpFormRequestModel(
            firstName:"Anton",
            lastName: "Veldanov",
            email: "test@test.com",
            password:"12345678")
    }
    
    override func tearDownWithError() throws {
        sut = nil
        signUpFormRequestModel = nil
        MockURLProtocol.stubResponseData = nil
        MockURLProtocol.error = nil
    }
    
    
    
    
    func testSignUpWebService_WhenGivenSuccessfullResponse_ReturnsSuccess(){
        // Arrange
        
        let jsonString = "{\"status\":\"ok\"}"
        MockURLProtocol.stubResponseData = jsonString.data(using: .utf8)
        
        let expectation = self.expectation(description: "SignUp Web Services Expectation")
        // Act
        sut.signup(withForm: signUpFormRequestModel){ (signUpResponseModel,error) in
            // Assert
            //JSON Response: "{\"status\":\"ok\"}"
            print(signUpResponseModel)
            XCTAssertEqual(signUpResponseModel?.status, "ok")
            expectation.fulfill() //expectation is met
        }
        
        
        
        self.wait(for: [expectation], timeout: 15)
        
    }
    
    
    
    func testSignupWebService_WhenReceivedDifferentJSONResponse_ErrorTookPlace(){
        // Arrange
        let jsonString = "{\"path\":\"/users\", \"error\":\"Internal Server Error\"}"
        
        MockURLProtocol.stubResponseData = jsonString.data(using: .utf8)
        let expectation = self.expectation(description: "Signup() method expectation for a response that contains a different JSON structure")
        
        // Act
        sut.signup(withForm: signUpFormRequestModel){ (signUpResponseModel,error) in
            // Assert
            //JSON Response: "{\"status\":\"ok\"}"
            print(signUpResponseModel)
            XCTAssertNil(signUpResponseModel, "The response model for a request containing unknown JSON response, should have been nil")
            XCTAssertEqual(error, SignUpError.invalidResponseModel, "The signup() method did not return expected error")
            expectation.fulfill() //expectation is met
        }
        
        
        
        self.wait(for: [expectation], timeout: 15)
        
        
        
    }
    
    
    
    func testSignupWebservice_WhenEmptyURLStringProvided_ReturnsError(){
        //Arrange
        let expectation = self.expectation(description: "An empty request URL string expectation")
        
        sut = SignUpWebService(urlString: "")
        //Act
        sut.signup(withForm: signUpFormRequestModel) { (signUpResponseModel, error) in
            //Assert
            XCTAssertNil(signUpResponseModel,"When an invalidRequestURLString takes place, the response model must be nil")
            XCTAssertEqual(error, SignUpError.invalidRequestURLString,"The signup() method did not return an expected error for an invalidRequestURLString error")
            expectation.fulfill()
        }
        
        
        
        self.wait(for: [expectation], timeout: 2)
        
    }
    
    
    func testSignupWebService_WhenURLRequestFails_ReturnsErrorMessageDescription(){
        
        // Arrange
        let expectation = self.expectation(description: "A failed Request expectation")
        let errorDescription = "A localized description of an error"
        MockURLProtocol.error = SignUpError.failedRequest(description:errorDescription)
        
        // Act
        sut.signup(withForm: signUpFormRequestModel) { (signupResponseModel, error) in
            print("ERRLOc", error?.localizedDescription)
            print("ERRRRRRR2",SignUpError.failedRequest(description: errorDescription))
            // Assert
            XCTAssertEqual(error, SignUpError.failedRequest(description:errorDescription), "The signup() method did not return an expected error for the Failed Request")
            
//             XCTAssertEqual(error?.localizedDescription, errorDescription)

            expectation.fulfill()
        }
        
        self.wait(for: [expectation], timeout: 2)
    }
    
}
