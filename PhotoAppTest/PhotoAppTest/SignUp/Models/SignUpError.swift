//
//  SignUpErrors.swift
//  PhotoAppTest
//
//  Created by Veldanov, Anton on 7/30/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation

enum SignUpError: LocalizedError, Equatable{
    
    case invalidResponseModel
    case invalidRequestURLString
    case failedRequest(description:String)
    
    var errorDescription: String? {
        switch self {
        case .failedRequest(let description):
            return description
        case .invalidResponseModel, .invalidRequestURLString:
            return ""
        }
    }
}
