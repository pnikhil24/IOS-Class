//
//  MovieCollectionViewCell.swift
//  Porika_Movies
//
//  Created by student on 4/28/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var movieOutlet: UIImageView!
    
    func assignMovie(_ movie: Movie) {
        movieOutlet.image = movie.image
    
    }
}
