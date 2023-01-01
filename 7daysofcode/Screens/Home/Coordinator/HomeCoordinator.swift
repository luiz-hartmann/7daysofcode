//
//  HomeCoordinator.swift
//  7daysofcode
//
//  Created by Luiz Hartmann on 29/11/22.
//

import UIKit

protocol HomeFlow: AnyObject {
    func didSelect(with movie: Movie)
}

final class HomeCoordinator: Coordinator, HomeFlow {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = HomeViewController(coordinator: self, viewModel: MovieViewModel())
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func didSelect(with movie: Movie) {
        let coordinator = DetailCoordinator(navigationController: navigationController)
        coordinator.start(with: movie)
    }
}
