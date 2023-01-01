//
//  MovieCellViewModel.swift
//  7daysofcode
//
//  Created by Luiz Hartmann on 01/01/23.
//

import Foundation

struct MovieCellViewModel {
    
    var movie: Movie?
    
    init(movie: Movie) {
        self.movie = movie
    }
    
    var title: String {
        return movie?.title ?? String.empty
    }
    
    var releaseDate: String {
        return "Lançamento: \(movie?.releaseDate.dateFormatter() ?? String.empty)"
    }
    
    var image: String {
        return movie?.image ?? String.empty
    }
    
    var overview: String {
        return movie?.overview ?? String.empty
    }
    
    var voteAverage: Double {
        return movie?.voteAverage ?? 0
    }
}
