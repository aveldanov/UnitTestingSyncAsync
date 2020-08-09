//
//  SignUpViewControllerTests.swift
//  PhotoAppTestTests
//
//  Created by Veldanov, Anton on 8/8/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import XCTest
@testable import PhotoAppTest


class SignUpViewControllerTests: XCTestCase {
//    var storyboard: UIStoryboard!
//    var sut: SignupViewController!
    
    
    override func setUpWithError() throws {
//        storyboard = UIStoryboard(name: "Main", bundle: nil)
//        sut = storyboard.instantiateViewController(identifier: "SignupViewController") as? SignupViewController
//        sut?.loadViewIfNeeded()
    }

    override func tearDownWithError() throws {
//        storyboard = nil
//        sut = nil
    }


    func testSignupViewController_WhenCreated_HasRequiredTextFieldsEmpty(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut = storyboard.instantiateViewController(identifier: "SignupViewController") as? SignupViewController
        sut?.loadViewIfNeeded()
        
        XCTAssertEqual(sut?.firstNameTextField.text, "", "First name text field was not empty when the view controller initially loaded")

    }

}
