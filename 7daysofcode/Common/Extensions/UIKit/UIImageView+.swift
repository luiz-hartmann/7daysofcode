//
//  UIImageView+.swift
//  7daysofcode
//
//  Created by Luiz Hartmann on 30/11/22.
//

import UIKit
import Kingfisher

extension UIImageView {
    func configureImage(_ imageURL: String) {
        let url = URL(string: "https://image.tmdb.org/t/p/w500\(imageURL)")
        self.kf.setImage(with: url)
    }
}
