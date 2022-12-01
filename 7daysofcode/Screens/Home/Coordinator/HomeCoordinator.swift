//
//  HomeCoordinator.swift
//  7daysofcode
//
//  Created by Luiz Hartmann on 29/11/22.
//

import UIKit

class HomeCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = HomeViewController()
        viewController.coordinator = self
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    func didSelect(popularModel: PopularModel) {
        let coordinator = DetailCoordinator(navigationController: navigationController, viewModel: DetailViewModel(popularModel: popularModel))
        coordinator.start()
    }
}
