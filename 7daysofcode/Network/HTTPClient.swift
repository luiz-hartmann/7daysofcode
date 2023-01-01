//
//  HTTPClient.swift
//  7daysofcode
//
//  Created by Luiz Hartmann on 30/11/22.
//

import Foundation

protocol HTTPClientProtocol {
    func request<T: Decodable>(request: URLRequest,
                               completion: @escaping (Result<T, HTTPError>) -> Void)
}

enum HTTPError: String, Error {
    case missingData
    case badStatusCode
    case parseError
}

enum HTTPMethod: String {
    case get = "GET"
}

extension HTTPClientProtocol {
    private func decodingData<T: Decodable>(request: URLRequest,
                                            decodingType: T.Type?,
                                            completion: @escaping (T?, HTTPError?) -> Void) ->
    URLSessionDataTask {
        
        return URLSession.shared.dataTask(with: request) { data, response, error in
            
            guard let response = response as? HTTPURLResponse, (200..<300) ~= response.statusCode else {
                completion(nil, HTTPError.badStatusCode)
                return
            }
            
            guard let data = data else {
                completion(nil, HTTPError.missingData)
                return
            }
            
            guard let decodingType = decodingType else {
                completion(nil, .missingData)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let json = try decoder.decode(decodingType, from: data)
                completion(json, nil)
            } catch {
                completion(nil, HTTPError.parseError)
            }
        }
    }
    
    func request<T: Decodable>(request: URLRequest,
                               completion: @escaping (Result<T, HTTPError>) -> Void) {
        decodingData(request: request, decodingType: T.self) { decodable, error in
            
            if let error = error {
                completion(Result.failure(error))
                return
            }
            
            guard let model = decodable else {
                completion(Result.failure(HTTPError.missingData))
                return
            }
            completion(Result.success(model))
        }.resume()
    }
}
