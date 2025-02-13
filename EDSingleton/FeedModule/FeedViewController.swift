//
//  FeedViewController.swift
//  EDSingleton
//
//  Created by Abdelrahman Mohamed on 24.12.2024.
//

import UIKit

typealias FeedLoader = (([String]) -> Void) -> Void

class FeedViewController: UIViewController {
    
    var loadFeed: FeedLoader!
    
    convenience init(
        loadFeed: @escaping FeedLoader
    ) {
        self.init()
        self.loadFeed = loadFeed
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadFeed { [weak self] loadedItems in
            
        }
    }
}
