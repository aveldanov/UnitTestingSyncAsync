//
//  BoardToDeathUITests.swift
//  BoardToDeathUITests
//
//  Created by Veldanov, Anton on 7/1/20.
//  Copyright © 2020 Caleb Stultz. All rights reserved.
//

import XCTest

class BoardToDeathUITests: XCTestCase {

  var app: XCUIApplication!
  
  
    override func setUpWithError() throws {

      
        app = XCUIApplication()
        continueAfterFailure = false

    }

    override func tearDownWithError() throws {
      app = nil
    }

  func testOnboarding_WhenSwiped_NextVCLaunched(){
    app.launch()
    
    XCTAssertTrue(app.staticTexts["Welcome to BoardToDeath"])
  }
 
}
