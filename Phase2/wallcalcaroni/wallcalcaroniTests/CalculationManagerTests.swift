

import XCTest
@testable import wallcalcaroni

class CalculationManagerTests: XCTestCase {

  var sut: CalculationManager! // System under test
  
    override func setUpWithError() throws {
        sut = CalculationManager()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

  func testInit_WhenGivenValues_TakesValues(){
    let calcManager1 = CalculationManager(valueA: 10, valueB: 20, currentOperand: .multiply, valueEntryArray: [])
    
    let calcManager2 = CalculationManager(valueA: 10, valueB: 20, currentOperand: .multiply, valueEntryArray: [])
    
    XCTAssertEqual(calcManager1, calcManager2)
    
    
//    let calcManager = CalculationManager(valueA: 10, valueB: 20, currentOperand: .multiply, valueEntryArray: [])
    
//    XCTAssertEqual(calcManager.valueA, 10)
//    XCTAssertEqual(calcManager.valueB, 20)
//    XCTAssertNotNil(calcManager.currentOperand)
    
  }
    
    func testValue_AreInitiallyZero(){
      
      XCTAssertEqual(sut.valueA, 0)
      XCTAssertEqual(sut.valueB, 0)

    
  }
  
  func testValues_InsertingValues_ChangesValueA(){
    sut.insert(value: 10)
    XCTAssertEqual(sut.valueA, 10)
  }
  func testOperand_IsInitiallyNil(){
    XCTAssertNil(sut.currentOperand,"Operand should be nil")
  }
  
  func testOperand_WhenGivenOperand_SetsOperand(){
    sut.insert(value: 10)
    sut.set(operand: .multiply)
    
    XCTAssertNotNil(sut.currentOperand)
      }

  
  func testCalculation_ForValues(){
    sut.insert(value: 15)
    sut.set(operand: .subtract)
    sut.insert(value: 5)
    
    XCTAssertEqual(sut.calculate(), 10)
    
  }
  
}
