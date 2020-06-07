//
//  DownloadClientTests.swift
//  photolodeTests
//
//  Created by Veldanov, Anton on 6/6/20.
//

import XCTest
@testable import photolode

class DownloadClientTests: XCTestCase {
  var sut: DownloadClient!
  
  var mockURLSession: MockURLSession!
  
    override func setUpWithError() throws {
       sut = DownloadClient()
      mockURLSession = MockURLSession()
      sut.session = mockURLSession
    }

    override func tearDownWithError() throws {
        sut = nil
    }
  func testDownloadImage_UsesExpectedHost(){
    let imageURL = imageURLStrings[3]
    sut.downloadImage(withURL: imageURL)
    guard let url = URL(string: imageURL) else {
      XCTFail();return
    }
    let urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: true)
    XCTAssertEqual(urlComponents?.host, "images.pexels.com")
    
    
  }
  
  
   func testDownloadImage_UsesExpectedPath(){
    let imageURL = imageURLStrings[3]
    sut.downloadImage(withURL: imageURL)
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

    
    var url: URL?
        func dataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
          self.url = url
          return URLSession.shared.dataTask(with: url)
        }
    
  }
  
  
  
}
