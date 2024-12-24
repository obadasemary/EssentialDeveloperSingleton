//
//  RemoteFeedLoader.swift
//  EDSingleton
//
//  Created by Abdelrahman Mohamed on 24.12.2024.
//


class RemoteFeedLoader: FeedLoader {
    func loadFeed(_ completion: @escaping ([String]) -> Void) {
        let items: [String] = ["Item 1", "Item 2", "Item 3"]
        completion(items)
    }
}