

import XCTest
@testable import wallcalcaroni

class CalculatorViewModelTest: XCTestCase {
  var sut: CalculatorViewModel! //System Under Test
    override func setUpWithError() throws {
        sut = CalculatorViewModel()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

  func testInit_WhenGivenValues_TakenValues(){
    let calcManager1 = CalculatorViewModel(valueA: 10, valueB: 20, currentOperand: .multiply, valueEntryArray: [])
    let calcManager2 = CalculatorViewModel(valueA: 10, valueB: 20, currentOperand: .multiply, valueEntryArray: [])
    
//    XCTAssertEqual(calcManager.valueA, 10)
//    XCTAssertEqual(calcManager.valueB, 20)

    
    XCTAssertEqual(calcManager1, calcManager2)
    
  }
  
  func testValues_AreInitiallyZero(){
    XCTAssertEqual(sut.valueA, 0)
    XCTAssertEqual(sut.valueB, 0)

    
    
  }
  
  func testValues_InsertValues_ChangesValueA(){
    sut.insert(value: 10)
    
    XCTAssertEqual(sut.valueA, 10)
  }
  
  func testOperant_isInitiallyNil(){
    
    XCTAssertNil(sut.currentOperand, "Operand Should Be Nil")
  }
  
  func testOperand_WhenGivenOPerand_setsOperand(){
    sut.insert(value: 20)
    sut.set(operand: .add)
    sut.insert(value: 10)
    
    XCTAssertNotNil(sut.currentOperand)
  }

  
  func testCalculation_ForValues(){
    sut.insert(value: 15)
    sut.set(operand: .subtract)
    sut.insert(value: 5)
    
    XCTAssertEqual(sut.calculate(), 10)
    
    
  }
  
  func testClear_WhenToldClearValue(){
    sut.insert(value: 10)
    sut.clearValues()
    
    XCTAssertEqual(sut.valueA, 0)
    XCTAssertEqual(sut.valueB, 0)
    XCTAssertEqual(sut.currentOperand, nil)
    XCTAssertEqual(sut.valueEntryArray, [])
    
  }

}
