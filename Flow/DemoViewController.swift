//
//  DemoViewController.swift
//  Flow
//
//  Created by flowerflower on 2019/3/8.
//  Copyright © 2019 FanQu. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.navigationController?.navigationBar.isTranslucent = false
        
        let menu = YourItemsMenu(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.width / 16.0 * 9.0))
        self.view.addSubview(menu)
        
    }
    
    
}
