//
//  MoviesDetailViewController.swift
//  flix
//
//  Created by Grant Yolasan on 1/23/19.
//  Copyright © 2019 Grant Yolasan. All rights reserved.
//

import UIKit
import AlamofireImage

class MoviesDetailViewController: UIViewController {


    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
   
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie : [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = movie["title"] as! String?
        titleLabel.sizeToFit()
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let baseURL2 = "https://image.tmdb.org/t/p/w780"
        let posterPath = movie["poster_path"] as! String
        
        let posterURL = URL(string: baseURL + posterPath)
        posterView.af_setImage(withURL: posterURL!)

        let backdropPath = movie["backdrop_path"] as! String
        
        let backdropURL = URL(string: baseURL2 + backdropPath)
        backdropView.af_setImage(withURL: backdropURL!)
        // Do any additional setup after loading the view.
    }
}
