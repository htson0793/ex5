//
//  MainTableViewCell.swift
//  Ex5
//
//  Created by Hoang Son on 10/17/18.
//  Copyright © 2018 Hoang Son. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var lbTitleMain: UILabel!
    
    @IBOutlet weak var lbContent: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
