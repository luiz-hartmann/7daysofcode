//
//  DetailViewModel.swift
//  7daysofcode
//
//  Created by Luiz Hartmann on 30/11/22.
//

import Foundation

class DetailViewModel {
    
    var popularModel: PopularModel?
    
    init(popularModel: PopularModel) {
        self.popularModel = popularModel
    }
    
    var title: String {
        return popularModel?.title ?? String.empty
    }
    
    var releaseDate: String {
        return popularModel?.releaseDate ?? String.empty
    }
    
    var image: String {
        return popularModel?.image ?? String.empty
    }
    
    var overview: String {
        return popularModel?.overview ?? String.empty
    }
    
    var voteAverage: Double {
        return popularModel?.voteAverage ?? 0
    }
}
