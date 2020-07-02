//
//  ButtonMasherUITests.swift
//  ButtonMasherUITests
//
//  Created by Veldanov, Anton on 7/1/20.
//  Copyright © 2020 Caleb Stultz. All rights reserved.
//

import XCTest

class ButtonMasherUITests: XCTestCase {
  
  var app: XCUIApplication!
  
  
  override func setUpWithError() throws {
    
    continueAfterFailure = false
    app = XCUIApplication()
    app.launch()
  }
  
  override func tearDownWithError() throws {
    app = nil
  }
  
  func testChangeColorButton_WhenTapped_ShouldShowLabel(){
    app.buttons["Change Color"].tap()
    // search through labels and check if it is exists
    XCTAssertTrue(app.staticTexts["Now THAT's colorful!"].exists,"Label Should Show on Screen")
  }
  
  
}
