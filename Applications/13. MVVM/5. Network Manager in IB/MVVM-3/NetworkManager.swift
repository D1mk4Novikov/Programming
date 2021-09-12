//
//  NetworkManager.swift
//  MVVM-3
//
//  Created by Ivan Akulov on 15/05/2018.
//  Copyright © 2018 Ivan Akulov. All rights reserved.
//

import Foundation

class NetworkManager: NSObject {
    
    func fetchMovies(completion: ([String]) -> ()) {
        completion(["Movie 1", "Movie 2", "Movie 3"])
    }
}
