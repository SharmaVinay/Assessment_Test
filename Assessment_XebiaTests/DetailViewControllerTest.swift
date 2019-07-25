//
//  DetailViewControllerTest.swift
//  Assessment_XebiaTests
//
//  Created by xeadmin on 25/07/19.
//  Copyright © 2019 Vinay Sharma. All rights reserved.
//

import XCTest
@testable import Assessment_Xebia

class DetailViewControllerTest: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testloadLink() {
        let app = XCUIApplication()
        let rewards = app.staticTexts["test"]
        let exists = NSPredicate(format: "exists == 1")
        expectation(for: exists, evaluatedWith: rewards, handler: nil)
        waitForExpectations(timeout: 10, handler: nil)
        XCTAssert(rewards.exists)
        XCTAssert(app.staticTexts["Rewards Overview"].exists)
        
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
}
