//
//  APIManagerTest.swift
//  Assessment_XebiaTests
//
//  Created by Vinay Sharma on 23/07/19.
//  Copyright © 2019 Vinay Sharma. All rights reserved.
//

import XCTest
@testable import Assessment_Xebia

class APIManagerTest: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
        
        func testAPIWorking() {
            
            let expectation = XCTestExpectation.init(description: "Your expectation")
            let params : APIParams = [:]
            APIManager.sharedInstance.getNewsList(params, onSuccessClosure: { (response) in
                if response.isEmpty
                {
                    XCTFail("Fail")
                }
                // The request is finished, so our expectation
                expectation.fulfill()
            },onFailureClosure: { (errorResponse) in
                XCTFail("Fail")
            })
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
}
    
}
