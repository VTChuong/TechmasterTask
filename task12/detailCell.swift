//
//  detailCell.swift
//  task12
//
//  Created by Thien Chuong on 11/12/14.
//  Copyright (c) 2014 TMT. All rights reserved.
//

import UIKit

class detailCell: UITableViewCell {

    @IBOutlet var img: UIImageView!
    @IBOutlet var label: UILabel!
    @IBOutlet var desc: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
         
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
