//
//  DownloadClientTests.swift
//  photolodeTests
//
//  Created by Veldanov, Anton on 6/30/20.
//  Copyright © 2020 Caleb Stultz. All rights reserved.
//

import XCTest
@testable import photolode

class DownloadClientTests: XCTestCase {
  
  var sut: DownloadClient!
  var mockUrlSession: MockURLSession!

    override func setUpWithError() throws {
        sut = DownloadClient()
        mockUrlSession = MockURLSession()
      sut.session = mockUrlSession
    }

    override func tearDownWithError() throws {
     sut = nil
    }
  
  
  func testDownload_UsesExpectedHost(){
    let imageUrl = imageURLStrings[3]
    sut.downloadImage(withURL: imageUrl)
    guard let url = URL(string: imageUrl) else {
      XCTFail();return
    }
    
    let urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: true)
    XCTAssertEqual(urlComponents?.host, "images.pexels.com")
    
  }

  func testDownload_UsesExpectedPath(){
    let imageUrl = imageURLStrings[3]
    sut.downloadImage(withURL: imageUrl)
    guard let url = URL(string: "https://images.pexels.com/photos") else {
      XCTFail();return
    }
    
    let urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: true)
    XCTAssertEqual(urlComponents?.path, "/photos")
    
  }
  
  
  func testTerribleFunction_Performance(){
    measure {
          sut.terribleFunctionYouWouldNeverWrite()

    }
    
    
  }

}


extension DownloadClientTests{
  class MockURLSession: SessionProtocol{
    var url:URL?
    
    func dataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask{
//      self.url = url
      
      return URLSession.shared.dataTask(with: url)
      
    }
    
    
  }
  
}
