//
//  CalculationManagerTests.swift
//  wallcalcaroniTests
//
//  Created by Veldanov, Anton on 8/9/20.
//  Copyright © 2020 Caleb Stultz. All rights reserved.
//

import XCTest
@testable import wallcalcaroni

class CalculationManagerTests: XCTestCase {

    
    var sut: CalculationManager!
    override func setUpWithError() throws {
        sut = CalculationManager()
    }

    override func tearDownWithError() throws {
        sut = nil
    }
    
    func testInit_WhenGivenValues_TakesValues(){
        let calcManager = CalculationManager(valueA: 10, valueB: 20, currentOperand: .multiply, valueEntryArray: [])
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
    }



}
