//
//  LocalFeedLoader.swift
//  EDSingleton
//
//  Created by Abdelrahman Mohamed on 24.12.2024.
//


class LocalFeedLoader: FeedLoader {
    func loadFeed(_ completion: @escaping ([String]) -> Void) {
        let items: [String] = ["Local Item 1", "Local Item 2", "Local Item 3"]
        completion(items)
    }
}