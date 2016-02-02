//
//  CustomeCell.swift
//  ImageWebImageDemo
//
//  Created by mac on 02/02/16.
//  Copyright © 2016 Inwizards. All rights reserved.
//

import UIKit

class CustomeCell: UITableViewCell {

    @IBOutlet weak var Titlelable: UILabel!
    @IBOutlet weak var IMGView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        IMGView.layer.borderWidth = 2.0
        IMGView.layer.borderColor = UIColor.whiteColor().CGColor
        IMGView.layer.cornerRadius = IMGView.frame.size.height/2
        IMGView.clipsToBounds = true
    }

}
