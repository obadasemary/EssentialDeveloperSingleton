//
//  ApiClient+Extensions.swift
//  EDSingleton
//
//  Created by Abdelrahman Mohamed on 24.12.2024.
//


extension ApiClient {
    func login(completion: (LoggedInUser) -> Void) {}
}

extension ApiClient {
    func loadFeed(completion: ([FeedItem]) -> Void) {}
}
