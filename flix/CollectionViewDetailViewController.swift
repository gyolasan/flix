//
//  CollectionViewDetailViewController.swift
//  flix
//
//  Created by Grant Yolasan on 1/25/19.
//  Copyright © 2019 Grant Yolasan. All rights reserved.
//

import UIKit

class CollectionViewDetailViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backdropImageView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    var movie : [String:Any]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = movie["original_title"] as? String
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
        backdropImageView.af_setImage(withURL: backdropURL!)
        
        let rating = movie["vote_average"] as! Double
        ratingLabel.text = "Score: \(rating)"
        if rating > 7.5 {
            ratingLabel.textColor = UIColor.green
        } else if rating > 5.0 {
            ratingLabel.textColor = UIColor.yellow
        } else {
            ratingLabel.textColor = UIColor.red
        }
        ratingLabel.sizeToFit()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
