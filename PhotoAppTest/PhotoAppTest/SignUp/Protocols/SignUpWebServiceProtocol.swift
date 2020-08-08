//
//  SignUpWebServiceProtocol.swift
//  PhotoAppTest
//
//  Created by Veldanov, Anton on 8/7/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation


protocol SignUpWebServiceProtocol {
    func signup(withForm formModel: SignUpFormRequestModel, completeionHandler: @escaping (SignUpResponseModel?, SignUpError?)->Void )
}
