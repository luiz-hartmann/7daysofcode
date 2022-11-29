//
//  HomeViewController.swift
//  7daysofcode
//
//  Created by Luiz Hartmann on 29/11/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    private let homeView: HomeView = {
        let homeView = HomeView()
        return homeView
    }()
    
    override func loadView() {
        self.view = homeView
    }
}
