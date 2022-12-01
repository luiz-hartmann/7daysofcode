//
//  PopularModel.swift
//  7daysofcode
//
//  Created by Luiz Hartmann on 29/11/22.
//

import Foundation

struct PopularModel: Codable {
    let id: Int
    let title: String
    let releaseDate: String
    let image: String?
    let overview: String
    let voteAverage: Double
    
    private enum CodingKeys: String, CodingKey {
        case id
        case title
        case releaseDate = "release_date"
        case image = "poster_path"
        case overview
        case voteAverage = "vote_average"
    }
}

struct PopularResponse: Codable {
    let results: [PopularModel]
}
