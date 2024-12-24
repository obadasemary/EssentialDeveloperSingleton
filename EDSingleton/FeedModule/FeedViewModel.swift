//
//  FeedViewModel.swift
//  EDSingleton
//
//  Created by Abdelrahman Mohamed on 24.12.2024.
//


class FeedViewModel {
    
    var loadFeed: ((([FeedItem]) -> Void) -> Void)?
    
    func load() {
        loadFeed? { loadedItems in
            
        }
    }
}