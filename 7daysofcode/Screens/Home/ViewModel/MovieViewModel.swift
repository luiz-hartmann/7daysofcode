//
//  MovieViewModel.swift
//  7daysofcode
//
//  Created by Luiz Hartmann on 30/11/22.
//

import Foundation

class MovieViewModel {
    let client = ApiClient()
    var movie: [Movie] = []
    var updateUI: (() -> Void)?
    
    func load() {
        client.getPopular { [weak self] response in
            switch response {
            case .success(let movies):
                self?.movie = movies.results
                self?.updateUI?()
            case .failure(_):
                break
            }
        }
    }
    
    func numberOfRows() -> Int {
        return movie.count
    }
    
    func cellForRow(indexPath: IndexPath) -> Movie {
        return movie[indexPath.row]
    }
}
