//
//  MockSignUpViewDelegate.swift
//  PhotoAppTestTests
//
//  Created by Veldanov, Anton on 8/7/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation
import XCTest
@testable import PhotoAppTest


class MockSignUpViewDelegate: SignUpViewDelegateProtocol{
    var expectation: XCTestExpectation?
    var successfullSignUpCounter = 0
    var errorHandlerCounter = 0
    var signUpError: SignUpError?


    func successfullSignUp() {
        // ensuring the method was called only 1 time
        successfullSignUpCounter += 1
        expectation?.fulfill()
    }
    
    func errorHandler(error: SignUpError) {
        signUpError = error
print("BOOOOOOOOOOOOOM u")
        errorHandlerCounter += 1
        expectation?.fulfill()

    }
    
    
    
    
    
}
