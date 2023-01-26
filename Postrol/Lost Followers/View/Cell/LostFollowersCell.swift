//
//  LostFollowersCell.swift
//  Postrol
//
//  Created by PSI_ErsanV on 26.01.2023.
//

import UIKit

class LostFollowersCell: UITableViewCell {

    
    @IBOutlet weak var goProfile: UIButton!
    @IBOutlet weak var lostFollowersImage: UIImageView!
    @IBOutlet weak var username: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        goProfile.layer.cornerRadius = 6
        lostFollowersImage.layer.cornerRadius = lostFollowersImage.frame.width / 2
        lostFollowersImage.layer.masksToBounds = true

        
    }

    @IBAction func goProfile(_ sender: Any) {
        
    }
    
    
}
