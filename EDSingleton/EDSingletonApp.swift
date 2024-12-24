//
//  EDSingletonApp.swift
//  EDSingleton
//
//  Created by Abdelrahman Mohamed on 23.12.2024.
//

import SwiftUI

@main
struct EDSingletonApp: App {
    var body: some Scene {
        
        let remoteLoader = RemoteFeedLoader()
        let localLoader = LocalFeedLoader()
        let fallbackLoader = RemoteWithLocalFallbackFeedLoader(
            remote: remoteLoader,
            local: localLoader
        )
        let viewModel = FeedViewModel(
            remoteWithLocalFallbackFeedLoader: fallbackLoader
        )
        
        WindowGroup {
            FeedView(viewModel: viewModel)
        }
    }
}
