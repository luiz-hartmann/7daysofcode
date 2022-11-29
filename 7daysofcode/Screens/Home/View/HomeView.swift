//
//  HomeView.swift
//  7daysofcode
//
//  Created by Luiz Hartmann on 29/11/22.
//

import UIKit

class HomeView: UIView {
    
    // MARK: - Initialization
    init() {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension HomeView: Viewcode {
    func buildViewHierarchy() {}
    
    func addConstraints() { }
    
    func applyExtraConfiguration() {
        self.backgroundColor = .secondarySystemBackground
    }
}
