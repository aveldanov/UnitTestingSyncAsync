//
//  SignUpWebService.swift
//  PhotoAppTest
//
//  Created by Veldanov, Anton on 7/29/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation


class SignUpWebService{
    
    private let urlString: String
    private var urlSession: URLSession
    
    init(urlString:String, urlSession: URLSession = .shared) {
        self.urlString = urlString
        self.urlSession = urlSession
    }
    
    // SignUpFormRequestModel - data input = struct
    func signup(withForm formModel: SignUpFormRequestModel, completeionHandler: @escaping (SignUpResponseModel?, SignUpErrors?)->Void ){
        guard let url = URL(string:urlString) else{
            // a unit test a message returned when URL is nil
            
            completeionHandler(nil, SignUpErrors.invalideRequestURLStringError)
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.httpBody = try? JSONEncoder().encode(formModel)
        
        
        let dataTask = urlSession.dataTask(with: request) { (data, response, error) in
            //TODO: Write a unit test to handle error
            
            if let data = data, let signUpResponseModel = try? JSONDecoder().decode(SignUpResponseModel.self, from: data){
                completeionHandler(signUpResponseModel, nil)
            }else{
                
                completeionHandler(nil, SignUpErrors.responseModelParsingError)
                
            }
        }
        dataTask.resume()
        
    }
    
    
    
}
