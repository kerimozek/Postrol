//
//  ViewController.swift
//  Postrol
//
//  Created by PSI_ErsanV on 26.01.2023.
//

import UIKit

class MainVC: UIViewController {

    
    // MARK: - Outlets
    
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
        
        earnedFollowers.layer.borderWidth = 0.5
        earnedFollowers.layer.borderColor = UIColor.black.cgColor
        earnedFollowers.layer.cornerRadius = 16
        
        lostFollowers.layer.borderWidth = 0.5
        lostFollowers.layer.borderColor = UIColor.black.cgColor
        lostFollowers.layer.cornerRadius = 16
        
    }

    
    
    
    
    @IBAction func goStories(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: stories) as? StoriesVC
        navigationController?.pushViewController(vc!, animated: true)
        
    }
    
    
}


// MARK: - Extensions


