//
//  FavoriteFollowingsCell.swift
//  Postrol
//
//  Created by PSI_ErsanV on 27.01.2023.
//

import UIKit

class FavoriteFollowingsCell: UITableViewCell {

    
    @IBOutlet weak var goProfile: UIButton!
    @IBOutlet weak var favoriteFollowings: UILabel!
    @IBOutlet weak var favoriteFollowingsImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
        goProfile.layer.cornerRadius = 6
        favoriteFollowingsImage.layer.cornerRadius = favoriteFollowingsImage.frame.width / 2
        favoriteFollowingsImage.layer.masksToBounds = true
    }

    
    
}
