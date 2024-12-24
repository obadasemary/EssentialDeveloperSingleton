//
//  FeedView.swift
//  EDSingleton
//
//  Created by Abdelrahman Mohamed on 24.12.2024.
//

import SwiftUI

struct FeedView: View {
    
    @ObservedObject var viewModel: FeedViewModel
    
    init(viewModel: FeedViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Hello, world!")
                }
                .padding()
                
                VStack {
                    ForEach(viewModel.items, id: \.self) { item in
                        HStack {
                            Text("\(item)")
                            Image(systemName: "globe")
                                .imageScale(.large)
                                .foregroundStyle(.tint)
                        }
                    }
                }
            }
        }
        .onAppear() {
            viewModel.load()
        }
    }
}

#Preview {
    let remoteLoader = RemoteFeedLoader()
    let localLoader = LocalFeedLoader()
    let fallbackLoader = RemoteWithLocalFallbackFeedLoader(
        remote: remoteLoader,
        local: localLoader
    )
    let viewModel = FeedViewModel(
        remoteWithLocalFallbackFeedLoader: fallbackLoader
    )
    
    FeedView(viewModel: viewModel)
}
