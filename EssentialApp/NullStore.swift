//
//  NullStore.swift
//  EssentialApp
//
//  Created by Apple on 19/08/2022.
//
import Foundation
import EssentialFeedFramework

class NullStore {}

extension NullStore: FeedStore {
    func deleteCachedFeed() throws {}
    
    func insert(_ feed: [LocalFeedImage], timestamp: Date) throws {}
    
    func retrieve() throws -> CachedFeed? { .none }
}

extension NullStore: FeedImageDataStore {
    
    func insert(_ data: Data, for url: URL) throws {}
    
    func retrieve(dataForURL url: URL) throws -> Data? { .none }
}
