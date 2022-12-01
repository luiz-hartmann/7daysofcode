//
//  HomeViewModel.swift
//  7daysofcode
//
//  Created by Luiz Hartmann on 30/11/22.
//

import Foundation

class HomeViewModel {
    let client = Client()
    var model: [PopularModel] = []
    var updateUI: (() -> Void)?
    
    func load() {
        client.getPopular { [weak self] response in
            switch response {
            case .success(let movies):
                self?.model = movies.results
                self?.updateUI?()
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func numberOfRows(indexPath: IndexPath) -> PopularModel {
        return model[indexPath.row]
    }
    
    func cellForRow() -> Int {
        return model.count
    }
}
