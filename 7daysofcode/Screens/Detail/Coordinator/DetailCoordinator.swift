//
//  DetailCoordinator.swift
//  7daysofcode
//
//  Created by Luiz Hartmann on 30/11/22.
//

import UIKit

final class DetailCoordinator: Coordinator {
    let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() { }
    
    func start(with movie: Movie) {
        let viewController = DetailViewController(viewModel: DetailViewModel(movie: movie))
        navigationController.pushViewController(viewController, animated: true)
    }
}
