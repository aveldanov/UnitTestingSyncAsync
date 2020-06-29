//
//  PhotoViewControllerTests.swift
//  photolodeTests
//
//  Created by Veldanov, Anton on 6/28/20.
//

import XCTest
@testable import photolode

class PhotoViewControllerTests: XCTestCase {

  var sut: PhotoViewController!
  
  
    override func setUpWithError() throws {
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      sut = storyboard.instantiateViewController(withIdentifier: "PhotoViewController") as! PhotoViewController
      sut.loadViewIfNeeded()
      
    }

    override func tearDownWithError() throws {
      sut = nil
    }

  func testPhotoDownload_ImageOrientationIdenticalToOfflineFile(){
    let expectedImageOrientation = UIImage(named: "pexels-photo-768218")?.imageOrientation
    
    guard let url = URL(string: imageURLStrings[3]) else {
      XCTFail(); return
    }
    let sessionAnsweredExpecation = expectation(description: "Session")
    
    URLSession.shared.dataTask(with: url) { (data, response, error) in
      if let err = error {
        XCTFail(err.localizedDescription)
      }
    }
    sessionAnsweredExpecation.fulfill()
  }

}
