//
//  SignUpViewDelegateProtocol.swift
//  PhotoAppTest
//
//  Created by Veldanov, Anton on 8/7/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation

protocol SignUpViewDelegateProtocol: AnyObject {
    func successfullSignUp()
    func errorHandler(error: SignUpError)
    
}
