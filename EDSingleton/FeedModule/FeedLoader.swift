//
//  FeedLoader.swift
//  EDSingleton
//
//  Created by Abdelrahman Mohamed on 24.12.2024.
//


protocol FeedLoader {
    func loadFeed(_ completion: @escaping ([String]) -> Void)
}