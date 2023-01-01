//
//  String+.swift
//  7daysofcode
//
//  Created by Luiz Hartmann on 30/11/22.
//

import Foundation

extension String {
    func dateFormatter() -> Self {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let date = formatter.date(from: self)
        guard let date = date else {
            return "Não foi possível obter a data"
        }
        formatter.dateFormat = "dd/MM/yy"
        return formatter.string(from: date)
    }
}

extension String {
    static let empty = String()
}
