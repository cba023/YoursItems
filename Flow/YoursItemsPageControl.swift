//
//  YoursItemsPageControl.swift
//  Flow
//
//  Created by flowerflower on 2019/3/8.
//  Copyright © 2019 FanQu. All rights reserved.
//

import UIKit

class YoursItemsPageControl: UIPageControl {
    let normalImage: UIImage = UIImage(named: "")!
    let selectedImage: UIImage = UIImage(named: "")!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
