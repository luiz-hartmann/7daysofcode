//
//  DetailViewController.swift
//  7daysofcode
//
//  Created by Luiz Hartmann on 30/11/22.
//

import UIKit

class DetailViewController: UIViewController {
    
    // MARK: - Properties
    var viewModel: DetailViewModel?
    weak var coordinator: DetailCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        configure()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.view.setupGradientBackground()
    }
    
    // MARK: - UI Components
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 2
        label.font = .boldSystemFont(ofSize: 18)
        return label
    }()
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 30
        imageView.layer.masksToBounds = true
        imageView.backgroundColor = .systemRed
        return imageView
    }()
    
    private lazy var ratingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .gray
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 14, weight: .medium)
        return label
    }()    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel,
                                                       imageView,
                                                       ratingLabel,
                                                       descriptionLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.spacing = 25
        return stackView
    }()
    
    func configure() {
        self.titleLabel.text = viewModel?.title
        ratingLabel.text = "Classificação dos usuários: \( viewModel?.voteAverage ?? 0)"
        descriptionLabel.text = viewModel?.overview
        
        guard let imageURL = viewModel?.image else { return }
        imageView.configureImage(imageURL)
    }
}

extension DetailViewController: Viewcode {
    
    func buildViewHierarchy() {
        view.addSubview(stackView)
    }
    
    func addConstraints() {
        NSLayoutConstraint.activate([
            
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            
            imageView.widthAnchor.constraint(equalToConstant: 190),
            imageView.heightAnchor.constraint(equalToConstant: 250),
            
        ])
    }
    
    func applyExtraConfiguration() { }
}
