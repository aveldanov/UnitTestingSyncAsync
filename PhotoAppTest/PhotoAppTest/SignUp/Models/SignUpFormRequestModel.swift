//
//  SignUpFormRequestModel.swift
//  PhotoAppTest
//
//  Created by Veldanov, Anton on 7/29/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation


struct SignUpFormRequestModel: Encodable{
     let firstName: String
     let lastName: String
     let email: String
     let password: String
}
