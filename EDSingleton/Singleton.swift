//
//  Singleton.swift
//  EDSingleton
//
//  Created by Abdelrahman Mohamed on 23.12.2024.
//

import UIKit

// Main Module

extension ApiClient {
    func login(completion: (LoggedInUser) -> Void) {}
}

extension ApiClient {
    func loadFeed(completion: ([FeedItem]) -> Void) {}
}

// Api Module

class ApiClient {
    
    static let instance = ApiClient()
    
    func execute(
        _ request: URLRequest,
        completion: @escaping (Result<Data, Error>) -> Void
    ) {}
}

class MockApiClint: ApiClient {}

// Login Module

struct LoggedInUser {}

class LoginViewModel {
    
    var login: (((LoggedInUser) -> Void) -> Void)?
    
    func didTapLoginButton() {
        login? { user in
            print(user)
        }
    }
}

// Feed Module

struct FeedItem {}

class FeedViewModel {
    
    var loadFeed: ((([FeedItem]) -> Void) -> Void)?
    
    func load() {
        loadFeed? { loadedItems in
            
        }
    }
}
