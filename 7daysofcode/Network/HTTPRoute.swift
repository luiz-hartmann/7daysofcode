//
//  HTTPRoute.swift
//  7daysofcode
//
//  Created by Luiz Hartmann on 30/11/22.
//

import Foundation

protocol HTTPRoute {
    var baseURL: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
}

extension HTTPRoute {
    
    var apiKey: String {
        return "api_key=720799ca1ad8568d487187b1227c94a2&language=pt-BR&page=1"
    }
    
    var urlComponents: URLComponents {
        var components = URLComponents(string: baseURL + path)!
        components.query = apiKey
        return components
    }
    
    var request: URLRequest {
        let request = urlComponents.url!
        return URLRequest(url: request)
    }
}
