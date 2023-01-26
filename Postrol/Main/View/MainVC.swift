//
//  ViewController.swift
//  Postrol
//
//  Created by PSI_ErsanV on 26.01.2023.
//

import UIKit

class MainVC: UIViewController {

    
    @IBOutlet weak var goStories: UIButton!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var followingCount: UILabel!
    @IBOutlet weak var followersCount: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setupUI()
    }

    private func setupUI() {
        
        profileImage.layer.cornerRadius = profileImage.frame.width / 2
        profileView.layer.cornerRadius = profileView.frame.width / 2
        profileImage.layer.masksToBounds = true
        goStories.layer.cornerRadius = 12
        
    }

    
    
    
    
    @IBAction func goStories(_ sender: Any) {
        
        print("tapped")
        
    }
    
    
}

