//
//  Viewcode.swift
//  7daysofcode
//
//  Created by Luiz Hartmann on 29/11/22.
//

import Foundation

protocol Viewcode {
    func buildViewHierarchy()
    func addConstraints()
    func applyExtraConfiguration()
}

extension Viewcode {
    func setup() {
        buildViewHierarchy()
        addConstraints()
        applyExtraConfiguration()
    }
}
