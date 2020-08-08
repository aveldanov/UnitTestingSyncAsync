//
//  MockSignUpWebService.swift
//  PhotoAppTestTests
//
//  Created by Veldanov, Anton on 8/7/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation
@testable import PhotoAppTest


class MockSignUpWebService: SignUpWebServiceProtocol{
    
    var isSignupMethodCalled: Bool = false
    var shouldReturnError: Bool = false

    func signup(withForm formModel: SignUpFormRequestModel, completionHandler: @escaping (SignUpResponseModel?, SignUpError?) -> Void) {
        isSignupMethodCalled = true
        

        
        if shouldReturnError {
            completionHandler(nil, SignUpError.failedRequest(description: "Signup request was not successful"))
        } else {
            let responseModel = SignUpResponseModel(status: "Ok")
            completionHandler(responseModel, nil)
        }
        
    }
    


    
    
    
}
