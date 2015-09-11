//
//  PhotoCellTableViewCell.swift
//  W1-Exercise
//
//  Created by Tianyi Xing on 9/10/15.
//  Copyright © 2015 Tianyi Xing. All rights reserved.
//

import UIKit

class PhotoCellTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewTemplate: UIImageView!
  
    @IBOutlet weak var pertraitImage: UIImageView!
  
       
    @IBOutlet weak var userName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        pertraitImage.layer.borderWidth = 1
        pertraitImage.layer.masksToBounds = false
        pertraitImage.layer.borderColor = UIColor.blackColor().CGColor
        pertraitImage.layer.cornerRadius = pertraitImage.frame.height/2
        pertraitImage.clipsToBounds = true
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
