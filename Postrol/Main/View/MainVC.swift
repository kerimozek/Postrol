//
//  ViewController.swift
//  Postrol
//
//  Created by PSI_ErsanV on 26.01.2023.
//

import UIKit

class MainVC: UIViewController {

    
    // MARK: - Outlets
    
    @IBOutlet weak var goAnalytics: UIButton!
    @IBOutlet weak var bestFollowersCount: UILabel!
    @IBOutlet weak var bestFollowers: UIView!
    @IBOutlet weak var ghostFollowersCount: UILabel!
    @IBOutlet weak var ghostFollowers: UIView!
    @IBOutlet weak var favoriteFollowingsCount: UILabel!
    @IBOutlet weak var favoriteFollowings: UIView!
    @IBOutlet weak var secretFollowersCount: UILabel!
    @IBOutlet weak var secretFollowers: UIView!
    @IBOutlet weak var lostFollowersCount: UILabel!
    @IBOutlet weak var earnedFollowersCount: UILabel!
    @IBOutlet weak var lostFollowers: UIView!
    @IBOutlet weak var earnedFollowers: UIView!
    @IBOutlet weak var goStories: UIButton!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var followingCount: UILabel!
    @IBOutlet weak var followersCount: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileView: UIView!
    
    // MARK: - Variables - Constants
    
    private let stories = "StoriesVC"
    
    
    // MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setupUI()
    }

    private func setupUI() {
        
        profileImage.layer.cornerRadius = profileImage.frame.width / 2
        profileView.layer.cornerRadius = profileView.frame.width / 2
        profileImage.layer.masksToBounds = true
        goStories.layer.cornerRadius = 12
        goAnalytics.layer.cornerRadius = 12
        
        earnedFollowers.layer.borderWidth = 0.5
        earnedFollowers.layer.borderColor = UIColor.black.cgColor
        earnedFollowers.layer.cornerRadius = 16
        
        lostFollowers.layer.borderWidth = 0.5
        lostFollowers.layer.borderColor = UIColor.black.cgColor
        lostFollowers.layer.cornerRadius = 16
        
        bestFollowers.layer.borderWidth = 0.5
        bestFollowers.layer.borderColor = UIColor.black.cgColor
        bestFollowers.layer.cornerRadius = 16
        
        ghostFollowers.layer.borderWidth = 0.5
        ghostFollowers.layer.borderColor = UIColor.black.cgColor
        ghostFollowers.layer.cornerRadius = 16
        
        favoriteFollowings.layer.borderWidth = 0.5
        favoriteFollowings.layer.borderColor = UIColor.black.cgColor
        favoriteFollowings.layer.cornerRadius = 16
        
        secretFollowers.layer.borderWidth = 0.5
        secretFollowers.layer.borderColor = UIColor.black.cgColor
        secretFollowers.layer.cornerRadius = 16
        
    }

    
    
    
    
    @IBAction func goStories(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: stories) as? StoriesVC
        navigationController?.pushViewController(vc!, animated: true)
        
    }
    
    @IBAction func goAnalytics(_ sender: Any) {
        
        
        
    }
    
}


// MARK: - Extensions


