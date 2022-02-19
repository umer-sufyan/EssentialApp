//
//  EssentialAppUIAcceptanceTests.swift
//  EssentialAppUITests
//
//  Created by Apple on 19/02/2022.
//

import XCTest

class EssentialAppUIAcceptanceTests: XCTestCase {
    
    func test_onLaunch_displaysRemoteFeedWhenCustomerHasConnectivity() {
        let app = XCUIApplication()
        
        app.launch()
        
        _ = app.waitForExistence(timeout: 20)
        
        XCTAssertEqual(app.cells.count, 22)
            
        
        XCTAssertTrue(app.cells.firstMatch.exists)
            
    }
    
    
    
    
}
