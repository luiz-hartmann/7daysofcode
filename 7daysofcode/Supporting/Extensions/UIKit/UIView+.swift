//
//  UIView+.swift
//  7daysofcode
//
//  Created by Luiz Hartmann on 29/11/22.
//

import UIKit

extension UIView {
    func setupGradientBackground() {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [UIColor.lightBackground.cgColor, UIColor.darkBackground.cgColor]
        gradient.locations = [0.0, 1.0]
        layer.insertSublayer(gradient, at: 0)
    }
}
