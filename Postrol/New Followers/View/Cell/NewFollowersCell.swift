//
//  NewFollowersCell.swift
//  Postrol
//
//  Created by PSI_ErsanV on 26.01.2023.
//

import UIKit

class NewFollowersCell: UITableViewCell {

    @IBOutlet weak var newFollowersView: UIView!
    @IBOutlet weak var newFollowersImage: UIImageView!
    @IBOutlet weak var goToProfile: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        goToProfile.layer.cornerRadius = 6
        newFollowersImage.layer.cornerRadius = newFollowersImage.frame.width / 2
        newFollowersImage.layer.masksToBounds = true
      
    }

    
    @IBAction func goToProfile(_ sender: Any) {
        
    }
    
}
