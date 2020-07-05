//
//  BoardToDeathUITests.swift
//  BoardToDeathUITests
//
//  Created by Veldanov, Anton on 7/1/20.
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
    
    XCTAssertTrue(app.staticTexts["Welcome to BoardToDeath"].exists)
    app.swipeLeft()
    XCTAssertTrue(app.staticTexts["Custom Puppy Content"].exists)
    
  }
  
  
  func testOnboarding_WhenDoneButtonTapped_PresentsAlert(){
    app.launch()
    app.swipeLeft()
    app.swipeLeft()
    app.buttons["Done"].tap()
    
  
    
    
  }
  
  
  
  
 
}
