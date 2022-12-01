//
//  HTTPError.swift
//  7daysofcode
//
//  Created by Luiz Hartmann on 30/11/22.
//

import Foundation

enum HTTPError: String, Error {
    case missingData = "Error: did not receive data"
    case badStatusCode = "Error: invalid status code"
    case parseError = "Error: Bad parsing"
}
