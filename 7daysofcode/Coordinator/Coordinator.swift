//
//  Coordinator.swift
//  7daysofcode
//
//  Created by Luiz Hartmann on 29/11/22.
//

import Foundation

protocol Coordinator {
    func start()
    func coordinate(to coordinator: Coordinator)
}

extension Coordinator {
    func coordinate(to coordinator: Coordinator) {
        coordinator.start()
    }
}

