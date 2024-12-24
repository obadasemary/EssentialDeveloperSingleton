//
//  FeedViewModel.swift
//  EDSingleton
//
//  Created by Abdelrahman Mohamed on 24.12.2024.
//



import Combine

class FeedViewModel: ObservableObject {
    
    @Published var items: [String] = []
    
    let remoteWithLocalFallbackFeedLoader: RemoteWithLocalFallbackFeedLoader
    
    init(
        remoteWithLocalFallbackFeedLoader: RemoteWithLocalFallbackFeedLoader
    ) {
        self.remoteWithLocalFallbackFeedLoader = remoteWithLocalFallbackFeedLoader
    }
    
    func load() {
        remoteWithLocalFallbackFeedLoader.loadFeed { [weak self] loadedItems in
            guard let self else { return }
            items = loadedItems
        }
    }
}
