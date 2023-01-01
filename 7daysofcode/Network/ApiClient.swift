//
//  APIClient.swift
//  7daysofcode
//
//  Created by Luiz Hartmann on 30/11/22.
//

import Foundation

class ApiClient: HTTPClientProtocol {
    func getPopular(completion: @escaping (Result<MovieResponse, HTTPError>) -> Void) {
        let route = HTTPRequest(baseURL: "https://api.themoviedb.org", path: "/3/movie/popular?", method: .get)
        request(request: route.request, completion: completion)
    }
}
