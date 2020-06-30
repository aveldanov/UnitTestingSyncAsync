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

    override func setUpWithError() throws {
        sut = DownloadClient()
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



}


extension DownloadClientTests{
  class MockURLSession{
    
    
    
    
  }
  
  
  
  
}
