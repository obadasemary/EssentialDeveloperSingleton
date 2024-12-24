//
//  ApiClient.swift
//  EDSingleton
//
//  Created by Abdelrahman Mohamed on 24.12.2024.
//

import Foundation

class ApiClient {
    
    static let instance = ApiClient()
    
    func execute(
        _ request: URLRequest,
        completion: @escaping (Result<Data, Error>) -> Void
    ) {}
}
