//
//  RemoteWithLocalFallbackFeedLoader.swift
//  EDSingleton
//
//  Created by Abdelrahman Mohamed on 24.12.2024.
//


class RemoteWithLocalFallbackFeedLoader: FeedLoader {
    
    let remote: RemoteFeedLoader
    let local: LocalFeedLoader
    
    init(remote: RemoteFeedLoader, local: LocalFeedLoader) {
        self.remote = remote
        self.local = local
    }
    
    func loadFeed(_ completion: @escaping ([String]) -> Void) {
        let load = Reachability.networkAvailable ? remote.loadFeed : local.loadFeed
        load(completion)
    }
}