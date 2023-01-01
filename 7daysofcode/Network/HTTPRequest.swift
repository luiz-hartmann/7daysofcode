//
//  HTTPRequest.swift
//  7daysofcode
//
//  Created by Luiz Hartmann on 30/11/22.
//

import Foundation

struct HTTPRequest: HTTPRoute {
    var baseURL: String
    var path: String
    var method: HTTPMethod
}
