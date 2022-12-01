//
//  Coordinator.swift
//  7daysofcode
//
//  Created by Luiz Hartmann on 29/11/22.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get }
    func start()
}

