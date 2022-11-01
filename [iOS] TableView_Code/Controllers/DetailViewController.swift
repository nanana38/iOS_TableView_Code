//
//  DetailViewController.swift
//  [iOS] TableView_Code
//
//  Created by 유현이 on 2022/11/01.
//

import UIKit

class DetailViewController: UIViewController {
    
    private let detailView = DetailView()
    
    var movieData: Movie?
    
    override func loadView() {
        view = detailView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        detailView.mainImageView.image = movieData?.movieImage
        detailView.movieNameLabel.text = movieData?.movieName
        detailView.descriptionLabel.text = movieData?.movieDescription
    }
}
