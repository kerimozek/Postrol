//
//  StoriesCell.swift
//  Postrol
//
//  Created by PSI_ErsanV on 26.01.2023.
//

import UIKit

class StoriesCell: UICollectionViewCell {

    @IBOutlet weak var storiesImage: UIImageView!
    @IBOutlet weak var favViewers: UILabel!
    @IBOutlet weak var storiesView: UIImageView!
    @IBOutlet weak var totalViewers: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        storiesImage.layer.cornerRadius = 8
        
    }
    
//    func configureCell(item: Stories) {
//
//        
//
//    }


}
