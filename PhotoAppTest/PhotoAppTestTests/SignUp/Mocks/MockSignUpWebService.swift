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

    func signup(withForm formModel: SignUpFormRequestModel, completeionHandler: @escaping (SignUpResponseModel?, SignUpError?) -> Void) {
        isSignupMethodCalled = true

    }
    


    
    
    
}
