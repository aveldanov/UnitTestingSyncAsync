//
//  CalculatorViewControllerTests.swift
//  wallcalcaroniTests
//
//  Created by Veldanov, Anton on 6/28/20.
//  Copyright © 2020 Caleb Stultz. All rights reserved.
//

import XCTest
@testable import wallcalcaroni

class CalculatorViewControllerTests: XCTestCase {
  
  var sut: CalculatorViewController!

    override func setUpWithError() throws {
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      sut = storyboard.instantiateViewController(withIdentifier: "CalculatorViewController") as! CalculatorViewController
    }

    override func tearDownWithError() throws {

    }



}
