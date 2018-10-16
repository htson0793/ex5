//
//  CategoryCollectionViewCell.swift
//  Ex5
//
//  Created by Hoang Son on 10/16/18.
//  Copyright © 2018 Hoang Son. All rights reserved.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cltImage: UIImageView!

    @IBOutlet weak var lbCategory: UILabel!
    
    @IBOutlet weak var lbtimeCategory: UILabel!
    
    @IBAction func clickStar(_ sender: UIButton) {
        if sender.currentImage == #imageLiteral(resourceName: "grayStar") {
            sender.setImage(#imageLiteral(resourceName: "Star"), for: .normal)
        }else{
            sender.setImage(#imageLiteral(resourceName: "grayStar"), for: .normal)
        }
    }
    @IBAction func clickHeart(_ sender: UIButton) {
        if sender.currentImage == #imageLiteral(resourceName: "grayHeart") {
            sender.setImage(#imageLiteral(resourceName: "Shape"), for: .normal)
        }else{
            sender.setImage(#imageLiteral(resourceName: "grayHeart"), for: .normal)
        }
    }
    
}
