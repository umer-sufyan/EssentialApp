//
//  FeedViewControllerTests+Localization.swift
//  EssentialFeedFramworkiOSTests
//
//  Created by Apple on 17/01/2022.
//

import Foundation
import XCTest
import EssentialFeedFramework

extension FeedUIIntegrationTests {
    private class DummyView: ResourceView {
        func display(_ viewModel: Any) {}
    }
    
    var loadError: String {
        LoadResourcePresenter<Any, DummyView>.loadError
    }
    
    var feedTitle: String {
        FeedPresenter.title
    }
}
