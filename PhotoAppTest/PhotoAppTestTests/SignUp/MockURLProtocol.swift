//
//  MockURLProtocol.swift
//  PhotoAppTestTests
//
//  Created by Veldanov, Anton on 8/1/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation


class MockURLProtocol: URLProtocol{
    
    static var stubResponseData: Data?
    
    override class func canInit(with request: URLRequest) -> Bool {
        return true
    }
    
    override class func canonicalRequest(for request: URLRequest) -> URLRequest {
        return request
    }
    // if not stub data then return an empty data object Data()
    override func startLoading() {
        client?.urlProtocol(self, didLoad: MockURLProtocol.stubResponseData ?? Data())
        client?.urlProtocolDidFinishLoading(self)
        
    }
    
    override func stopLoading() {
        
    }
    
}
