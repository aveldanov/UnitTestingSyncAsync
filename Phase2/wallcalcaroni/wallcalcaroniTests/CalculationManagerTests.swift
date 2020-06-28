

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



}
