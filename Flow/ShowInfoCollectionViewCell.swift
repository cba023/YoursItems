//
//  ShowInfoCollectionViewCell.swift
//  Flow
//
//  Created by flowerflower on 2019/3/8.
//  Copyright © 2019 FanQu. All rights reserved.
//

import UIKit

class ShowInfoCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        lblTitle.textAlignment = .center
    }

}
