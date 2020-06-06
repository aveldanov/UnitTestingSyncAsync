//
//  CalculatorViewControllerTests.swift
//  wallcalcaroniTests
//
//  Created by Veldanov, Anton on 6/5/20.
//  Copyright © 2020 Caleb Stultz. All rights reserved.
//

import XCTest
@testable import wallcalcaroni

class CalculatorViewControllerTests: XCTestCase {
  var sut: CalculatorViewController!
  
    override func setUpWithError() throws {
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      sut = storyboard.instantiateViewController(withIdentifier: "CalculatorViewController") as! CalculatorViewController
      sut.loadViewIfNeeded()
    }

    override func tearDownWithError() throws {
      sut = nil
    }

  func testAddingValues_ShouldAppendAndUpdateLabel(){
    sut.twoBtn.sendActions(for: .touchUpInside)
    sut.fiveBtn.sendActions(for: .touchUpInside)
    XCTAssertEqual(sut.valueLabel.text, "25")
  }
  
  func testEqualsButton_ShouldPerformCalculationAndUpdateLabel(){
    sut.twoBtn.sendActions(for: .touchUpInside)
    sut.fiveBtn.sendActions(for: .touchUpInside)
    
    sut.subtractBtn.sendActions(for: .touchUpInside)
    sut.fiveBtn.sendActions(for: .touchUpInside)
    sut.equalsBtn.sendActions(for: .touchUpInside)
    
    XCTAssertEqual(sut.valueLabel.text, "20")
  }
  
  
  func testOperandButtons_ShouldChangeOperandWhenTapped(){
    sut.fourBtn.sendActions(for: .touchUpInside)
    sut.multiplyBtn.sendActions(for: .touchUpInside)
    sut.addBtn.sendActions(for: .touchUpInside)
    sut.fourBtn.sendActions(for: .touchUpInside)
    sut.equalsBtn.sendActions(for: .touchUpInside)
    
    XCTAssertEqual(sut.valueLabel.text, "8")
    
  }
  
  func testClearButton_ShouldClearLabel(){
    sut.eightBtn.sendActions(for: .touchUpInside)
    sut.sevenBtn.sendActions(for: .touchUpInside)
    sut.acBtn.sendActions(for: .touchUpInside)
    
    XCTAssertEqual(sut.valueLabel.text, "0")
    
    
  }


}
