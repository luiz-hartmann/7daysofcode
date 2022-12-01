//
//  DetailCoordinator.swift
//  7daysofcode
//
//  Created by Luiz Hartmann on 30/11/22.
//

import UIKit

class DetailCoordinator: Coordinator {
    var navigationController: UINavigationController
    private var viewModel: DetailViewModel?
    
    init(navigationController: UINavigationController, viewModel: DetailViewModel) {
        self.navigationController = navigationController
        self.viewModel = viewModel
    }
    
    func start() {
        let viewController = DetailViewController()
        viewController.coordinator = self
        viewController.viewModel = viewModel
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
