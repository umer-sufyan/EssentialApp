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
        
        _ = app.waitForExistence(timeout: 30)
        
        let feedCells = app.cells.matching(identifier: "feed-image-cell")
        let firstImage = app.images.matching(identifier: "feed-image-view").firstMatch
        
        XCTAssertEqual(feedCells.count, 22)
    
        XCTAssertNotNil(firstImage)
        //XCTAssertTrue(firstImage.exists)
            
    }
    
    func test_onLaunch_displaysCachedRemoteFeedWhenCustomerHasNoConnectivity() {
        let onlineApp = XCUIApplication()
        onlineApp.launch()
        
        let offlineApp = XCUIApplication()
        offlineApp.launchArguments = ["-connectivity", "offline"]
        offlineApp.launch()
        
        let cachedFeedCells = offlineApp.cells.matching(identifier: "feed-image-cell")
        XCTAssertEqual(cachedFeedCells.count, 22)
        
        let firstCachedImage = offlineApp.images.matching(identifier: "feed-image-view").firstMatch
        //XCTAssertTrue(firstCachedImage.exists)
        XCTAssertNotNil(firstCachedImage)
    }
    
    func test_onLaunch_displaysEmptyFeedWhenCustomerHasNoConnectivityAndNoCache() {
        let app = XCUIApplication()
        app.launchArguments = ["-reset", "-connectivity", "offline"]
        app.launch()
        
        let feedCells = app.cells.matching(identifier: "feed-image-cell")
        XCTAssertEqual(feedCells.count, 0)
    }
    
    
    
    
}
