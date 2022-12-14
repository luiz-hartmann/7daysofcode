//
//  DetailViewModel.swift
//  7daysofcode
//
//  Created by Luiz Hartmann on 30/11/22.
//

import Foundation

struct DetailViewModel {
    
    var movie: Movie?
    
    init(movie: Movie) {
        self.movie = movie
    }

    var title: String {
        return movie?.title ?? String.empty
    }
    
    var releaseDate: String {
        return movie?.releaseDate ?? String.empty
    }
    
    var image: String {
        return movie?.image ?? String.empty
    }
    
    var overview: String {
        return movie?.overview ?? String.empty
    }
    
    var voteAverage: String {
        return "Classificação dos usuários: \(movie?.voteAverage ?? 0)"
    }
}
