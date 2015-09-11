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
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
